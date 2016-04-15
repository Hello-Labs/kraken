-module(web_ping_handler).
-export([init/3, handle/2, terminate/3]).

init(_Type, Req, _Opts) ->
    {ok, Req, no_state}.

handle(Req, State) ->
    {ok, Req2} = cowboy_req:reply(200, [
        {<<"content-type">>, <<"text/plain">>}
    ], <<"Pong">>, Req),
    {ok, Req2, State}.

terminate(_Reason, Req, State) ->
    ok.
