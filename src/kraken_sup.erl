%%%-------------------------------------------------------------------
%% @doc kraken top level supervisor.
%% @end
%%%-------------------------------------------------------------------

-module(kraken_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

-define(SERVER, ?MODULE).

%%====================================================================
%% API functions
%%====================================================================

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%====================================================================
%% Supervisor callbacks
%%====================================================================

%% Child :: {Id,StartFunc,Restart,Shutdown,Type,Modules}
init([]) ->
        gen_event:start_link({local, dia_logger}),
        gen_event:add_handler(dia_logger, diameter_logger, diameter_srv),
        DiaServer = {kraken,{diameter_srv,start_link,[]},
                     permanent,
                     5000,
                     worker,
                     [server_cb]},

        {ok, { {one_for_one, 5, 10}, [DiaServer]} }.


%%====================================================================
%% Internal functions
%%====================================================================
