-module(server_cb).

-include_lib("diameter/include/diameter.hrl").
-include_lib("diameter/include/diameter_gen_base_rfc3588.hrl").
-include_lib("rfc4005_nas.hrl").
-include_lib("rfc4006_cc.hrl").

%% diameter callbacks
-export([peer_up/3,
         peer_down/3,
         pick_peer/4,
         prepare_request/3,
         prepare_retransmit/3,
         handle_answer/4,
         handle_error/4,
         handle_request/3]).


-define(UNEXPECTED, erlang:error({unexpected, ?MODULE, ?LINE})).

peer_up(_SvcName, {PeerRef, Caps}, State) ->
            io:format("In callback up: ~p~n", [PeerRef]),
            io:format("Caps: ~p~n", [Caps]),
            State.

peer_down(_SvcName, {PeerRef, _}, State) ->
            io:format("down: ~p~n", [PeerRef]),
            State.

pick_peer(_, _, _SvcName, _State) ->
            ?UNEXPECTED.

prepare_request(_, _SvcName, _Peer) ->
            ?UNEXPECTED.

prepare_retransmit(_Packet, _SvcName, _Peer) ->
            ?UNEXPECTED.

handle_answer(_Packet, _Request, _SvcName, _Peer) ->
            ?UNEXPECTED.

handle_error(_Reason, _Request, _SvcName, _Peer) ->
            ?UNEXPECTED.



% TODO need call back for unknown request? without a guard that returns an error?
handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps})
  when is_record(Req, diameter_base_RAR) ->
    #diameter_caps{origin_host = {OH,_},
                   origin_realm = {OR,_}}
        = Caps,
    #diameter_base_RAR{'Session-Id' = Id,
                       'Re-Auth-Request-Type' = Type}
        = Req,

    {reply, #diameter_base_RAA{'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_SUCCESS',
                               'Origin-Host' = OH,
                               'Origin-Realm' = OR,
                               'Session-Id' = Id}};

handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps})
                  when is_record(Req, diameter_base_ACR) ->

            io:fwrite("BEARDO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"),

            #diameter_caps{origin_host = {OH,_},
                           origin_realm = {OR,_}}
                = Caps,

            #diameter_base_ACR{'Session-Id' = Id,
                               'Accounting-Record-Type' = RecType,
                               'Accounting-Record-Number' = RecNum,
                               'Acct-Application-Id' = AccAppId }
                = Req,

            Ans = #diameter_base_ACA{'Result-Code' = ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_SUCCESS',
                               'Origin-Host' = OH,
                               'Origin-Realm' = OR,
                               'Session-Id' = Id,
                               'Accounting-Record-Type' = RecType,
                               'Accounting-Record-Number' = RecNum

                },
            {reply, Ans};

handle_request(#diameter_packet{msg = _Req, errors = []}, _SvcName, {_, _Caps}) ->
    {protocol_error, ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_COMMAND_UNSUPPORTED'}.
