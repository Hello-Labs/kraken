%%%'   HEADER
%%% @author  <>
%%% @copyright
%%% @doc gen_server callback module implementation:
%%%
%%% @end
-module(diameter_srv).
-author(' <>').

-behaviour(gen_server).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter/include/diameter_gen_base_rfc3588.hrl").
-include_lib("rfc4005_nas.hrl").
-include_lib("rfc4006_cc.hrl").

-export([start_link/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2]).
-export([code_change/3]).
-export([stop/0, terminate/2]).

% TODO: If unnamed server, remove definition below.
-define(SERVER, ?MODULE).
%%%.
%%%'   TYPE DEFINITIONS
-type start_link_error() :: {already_started, pid()} | term().

%%%.
%%%'   PUBLIC API

%% @doc starts gen_server implementation and caller links to the process too.
-spec start_link() -> {ok, pid()} | ignore | {error, start_link_error()}.
start_link() ->
  % TODO: decide whether to name gen_server callback implementation or not.
  % gen_server:start_link(?MODULE, [], []). % for unnamed gen_server
  gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

%% @doc stops gen_server implementation process
-spec stop() -> ok.
stop() ->
  gen_server:cast(?SERVER, stop).

% TODO: add more public API here...

%%%.
%%%'   CALLBACKS
%% @callback gen_server
init(State) ->
        SvcName = ?MODULE,
        %atom_to_list(SvcName) ++ ".example.com"
        SvcOpts = [{'Origin-Host', origin_host()},
                        {'Origin-Realm', "localdomain"},
                        {'Vendor-Id', 193},
                        {'Product-Name', "Server"},
                        {'Auth-Application-Id', [?DIAMETER_APP_ID_COMMON, rfc4006_cc:id()]},
                        {application, [{alias, credit_control},
                                       {dictionary, rfc4006_cc},
                                       {module, credit_control_cb}]},
                        {application, [{alias, diameter_base_app},
                                       % Need to change dictionary to get more capabilities
                                       {dictionary, ?DIAMETER_DICT_COMMON},
                                       {module, server_cb}]}],

        lager:warning("App 4006 app id: ~p",[rfc4006_cc:id()]),
        % {ssl_options, true},
        TransportOpts =  [{transport_module, diameter_tcp},
                          {transport_config, [
                            {reuseaddr, true},
                            % Some SSL options here....
                            {ip, {127,0,0,1}}, {port, 3869}] ++ cert_parameters()}],
        % TODO check result of start_service, blow up if it can't be started
        Re1 = diameter:start_service(SvcName, SvcOpts),
        % Re = diameter:start_service("CC", CCSvcOpts),
        %io:format("Re1: ~p~nre: ~p~n", [Re1,Re]),
        diameter:add_transport(SvcName, {listen, TransportOpts}),
        %diameter:add_transport("CC", {listen, TransportOpts}),

       {ok, State}.

origin_host() ->
  "peer2.localdomain".

cert_parameters() ->
  [].
  % {_, CertFile} = application:get_env(certfile),
  % io:format("app id: ~p",[?DIAMETER_APP_ID_COMMON]),
  % [{certfile, CertFile},
  %  {keyfile, "/Users/jason.moore/Projects/freed/peer2.key.pem"},
  %  {cacertfile, "/Users/jason.moore/Projects/freed/cacert.pem"}].

%% @callback gen_server
handle_call(_Req, _From, State) ->
  {reply, State}.

%% @callback gen_server
handle_cast(stop, State) ->
  {stop, normal, State};
handle_cast(_Req, State) ->
  {noreply, State}.

%% @callback gen_server
handle_info(_Info, State) ->
  {noreply, State}.

%% @callback gen_server
code_change(_OldVsn, State, _Extra) ->
  {ok, State}.

%% @callback gen_server
terminate(normal, _State) ->
  ok;
terminate(shutdown, _State) ->
  ok;
terminate({shutdown, _Reason}, _State) ->
  ok;
terminate(_Reason, _State) ->
  ok.

%%%.
%%%'   PRIVATE FUNCTIONS
% TODO: Add private helper functions here.

%%%.
%%% vim: set filetype=erlang tabstop=2 foldmarker=%%%',%%%. foldmethod=marker:
