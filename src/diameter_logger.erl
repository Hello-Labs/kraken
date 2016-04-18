-module(diameter_logger).
-behaviour(gen_event).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter/include/diameter_gen_base_rfc3588.hrl").
-include_lib("rfc4005_nas.hrl").
-include_lib("rfc4006_cc.hrl").

-export([init/1, handle_event/2, terminate/2,
  handle_info/2, handle_call/2, code_change/3]).

init(Application) ->
  diameter:subscribe(Application),
  {ok, none}.

handle_event(Message, State) ->
  io:format("Diameter Message ~p~n", [Message]),
  {ok, State}.

handle_info({diameter_event, DiameterApp, start}, State) ->
  lager:info("Diameter app ~p started.", [DiameterApp]),
  {ok, State};

handle_info({diameter_event, DiameterApp, Parameters}, State) when is_tuple(Parameters) ->
  % lager:info("Diameter Event ~p Params ~p", [DiameterApp, lager:pr(Parameters, ?MODULE)]),
  Action = element(1, Parameters),
  case Action of
    up -> log_peer_action(DiameterApp, Action, Parameters);
    down -> log_peer_action(DiameterApp, Action, Parameters);
    _ -> log_diameter_action(DiameterApp, Action, Parameters)
  end,
  {ok, State};

handle_info(Info, State) ->
  io:format("Diameter Info ~p~n", [Info]),
  {ok, State}.

handle_call(_Request, State) ->
  {ok, ok, State}.

code_change(_OldVsn, State, _Extra) ->
  {ok, State}.

terminate(_Args, _State) ->
  ok.

remote_host(Parameters) ->
  {_, Caps} = element(3, Parameters),
  #diameter_caps{origin_host = {_, DH}, origin_realm = {_, _}} = Caps,
  DH.

log_peer_action(DiameterApp, Action, Parameters) ->
  lager:info("Diameter Peer state=~p app=~p peer=~p", [Action, DiameterApp, remote_host(Parameters)]),
  ok.

log_diameter_action(DiameterApp, Action, _Parameters) ->
  lager:info("Diameter Event: App: ~p Action: ~p", [DiameterApp, Action]),
  ok.
