-module(diameter_logger).
-behaviour(gen_event).

-export([init/1, handle_event/2, terminate/2,
  handle_info/2, handle_call/2, code_change/3]).

init(Application) ->
  % TODO actually write this to a log....
  io:format("BEARDO Subscribing...!!!!!!!!!!!!!!!!!!!!!!!!"),
  diameter:subscribe(Application),
  {ok, none}.

handle_event(Message, State) ->
  io:format("Diameter Message ~p~n", [Message]),
  {ok, State}.

handle_info(Info, State) ->
  io:format("Diameter Info ~p~n", [Info]),
  {ok, State}.

handle_call(_Request, State) ->
  {ok, ok, State}.

code_change(_OldVsn, State, _Extra) ->
  {ok, State}.

terminate(_Args, _State) ->
  ok.
