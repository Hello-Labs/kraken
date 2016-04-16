-module(credit_control_cb).

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
            lager:info("Credit Control Peer Up: ~p", [PeerRef]),
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


handle_request(#diameter_packet{msg = Req, errors = []}, _SvcName, {_, Caps})
  when is_record(Req, hello_CCR) ->
    #diameter_caps{origin_host = {OH,_},
                   origin_realm = {OR,_}}
        = Caps,
    % TODO make call to actually get the response

    #hello_CCR{'Session-Id' = Id,
               'CC-Request-Number' = RequestNumber } = Req,

    Ans = #hello_CCA{'Session-Id' = Id,
                     'Origin-Host' = OH,
                     'Origin-Realm' = OR,
                     'CC-Request-Number' = RequestNumber},

    {reply, Ans};


handle_request(#diameter_packet{msg = _Req, errors = []}, _SvcName, {_, _Caps}) ->
    {protocol_error, ?'DIAMETER_BASE_RESULT-CODE_DIAMETER_COMMAND_UNSUPPORTED'}.
