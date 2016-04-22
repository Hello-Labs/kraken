%%%-------------------------------------------------------------------
%% @doc kraken public API
%% @end
%%%-------------------------------------------------------------------

-module(kraken_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
  % TODO only add test harnesses if in development
  client:start(),
  client:connect(tcp),

  Dispatch = cowboy_router:compile([
            {'_', [{"/test/pcef/ccr", pcef_test_harness_ccr, []},
                   {"/", web_ping_handler, []}
                   ]}
    ]),
  {ok, _} = cowboy:start_http(my_http_listener, 100, [{port, 8080}],
          [{env, [{dispatch, Dispatch}]}]
  ),
  kraken_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
  ok.

%%====================================================================
%% Internal functions
%%====================================================================
