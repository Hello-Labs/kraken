-module(pcef_test_harness).
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
    {ok, Decoded, _} -> lager:info("Decoded: ~p", [Decoded]);
    % TODO bail on decode failure...
    {error, Error} -> lager:info("Failed to decode json: ~p", Error)
  end,

  % TODO handle no connection...
  {ok, CCA} = client:call_ccr(),
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

terminate(_Reason, Req, State) ->
  ok.
