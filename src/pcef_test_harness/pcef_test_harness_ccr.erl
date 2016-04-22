-module(pcef_test_harness_ccr).
-export([init/3, handle/2, terminate/3]).

-include_lib("rfc4006_cc.hrl").

init({tcp, http}, Req, Opts) ->
  lager:info("Handle init...", []),
  {ok, Req, no_state}.


handle(Req, State) ->
  % Decode JSON, extract parameters, call client ccr
  lager:info("Handle...", []),
  {ok, Body, Req2} = cowboy_req:body(Req),
  % TODO actually build request based on parameters...
  case jsone:try_decode(Body) of
    {ok, Decoded, _} ->
      CCRParameters = unpack_ccr_parameters(Decoded);
    % TODO bail on decode failure...
    {error, Error} ->
      lager:info("Failed to decode json: ~p", Error),
      CCRParameters = []
  end,

  % TODO handle no connection...
  {ok, CCA} = client:call_ccr(CCRParameters),
  % lager:info("CCA: ~p", [CCA]),
  % lager:info("Record info: ~p", [record_info(fields, hello_CCA)]),

  % This uses the record info to zip together names and values....
  CCAList = lists:zip(record_info(fields, hello_CCA), tl(tuple_to_list(CCA))),
  % lager:info("CCAList: ~p", [CCAList]),

  case jsone:try_encode(CCAList) of
    {error, EncodeError} ->
      lager:info("Failed to encode reponse: ~p", [EncodeError]),
      ResponseBody = jsone:encode([{status, error}]);
    {ok, ResponseBody} ->
      ok
  end,

  {ok, Req3} = cowboy_req:reply(200, [
      {<<"content-type">>, <<"application/json">>}
  ], ResponseBody, Req),
  {ok, Req3, State}.

valid_ccr_parameters() ->
  [atom_to_list(X) || X <- dia_recs:'#info-hello_CCR'(fields)].

atomify_to_list(Map) ->
  [{list_to_atom(unicode:characters_to_list(X)), Y} || {X, Y} <- maps:to_list(Map)].

unpack_ccr_parameters(Request) ->
  lager:info("Decoded: ~p", [Request]),
  % eventually want to check this...
  % ValidParameters = maps:with(valid_ccr_parameters(), Request),
  ValidParameters = Request,
  % receive the json
  % lager:info("List of valid: ~p", [valid_ccr_parameters()]),
  lager:info("Valid Parameters: ~p", [atomify_to_list(ValidParameters)]),

  atomify_to_list(ValidParameters).

terminate(_Reason, Req, State) ->
  ok.
