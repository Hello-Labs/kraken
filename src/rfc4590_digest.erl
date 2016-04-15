%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

%%
%% Copyright (c) Ericsson AB. All rights reserved.
%%
%% The information in this document is the property of Ericsson.
%%
%% Except as specifically authorized in writing by Ericsson, the
%% receiver of this document shall keep the information contained
%% herein confidential and shall protect the same in whole or in
%% part from disclosure and dissemination to third parties.
%%
%% Disclosure and disseminations to the receivers employees shall
%% only be made on a strict need to know basis.
%%

-module(rfc4590_digest).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records([]).

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/2, encode_avps/2, msg_name/2, msg_header/1,
	 rec2msg/1, msg2rec/1, name2rec/1, avp_name/2,
	 avp_arity/2, avp_header/1, avp/3, grouped_avp/3,
	 enumerated_avp/3, empty_value/1, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> rfc4590_digest.

id() -> erlang:error(badarg).

vendor_id() -> erlang:error(undefined).

vendor_name() -> erlang:error(undefined).

msg_name(_, _) -> ''.

msg_header(_) -> erlang:error(badarg).

rec2msg(_) -> erlang:error(badarg).

msg2rec(_) -> erlang:error(badarg).

name2rec(T) -> msg2rec(T).

avp_name(118, undefined) ->
    {'Digest-AKA-Auts', 'OctetString'};
avp_name(111, undefined) ->
    {'Digest-Algorithm', 'OctetString'};
avp_name(117, undefined) ->
    {'Digest-Auth-Param', 'OctetString'};
avp_name(113, undefined) ->
    {'Digest-CNonce', 'OctetString'};
avp_name(119, undefined) ->
    {'Digest-Domain', 'OctetString'};
avp_name(112, undefined) ->
    {'Digest-Entity-Body-Hash', 'OctetString'};
avp_name(121, undefined) ->
    {'Digest-HA1', 'OctetString'};
avp_name(108, undefined) ->
    {'Digest-Method', 'OctetString'};
avp_name(107, undefined) ->
    {'Digest-Nextnonce', 'OctetString'};
avp_name(105, undefined) ->
    {'Digest-Nonce', 'OctetString'};
avp_name(114, undefined) ->
    {'Digest-Nonce-Count', 'OctetString'};
avp_name(116, undefined) ->
    {'Digest-Opaque', 'OctetString'};
avp_name(110, undefined) ->
    {'Digest-Qop', 'OctetString'};
avp_name(104, undefined) ->
    {'Digest-Realm', 'OctetString'};
avp_name(103, undefined) ->
    {'Digest-Response', 'OctetString'};
avp_name(106, undefined) ->
    {'Digest-Response-Auth', 'OctetString'};
avp_name(120, undefined) ->
    {'Digest-Stale', 'OctetString'};
avp_name(109, undefined) ->
    {'Digest-URI', 'OctetString'};
avp_name(115, undefined) ->
    {'Digest-Username', 'OctetString'};
avp_name(122, undefined) -> {'SIP-AOR', 'OctetString'};
avp_name(_, _) -> 'AVP'.

avp_arity(_, _) -> 0.

avp_header('Digest-AKA-Auts') -> {118, 0, undefined};
avp_header('Digest-Algorithm') -> {111, 0, undefined};
avp_header('Digest-Auth-Param') -> {117, 0, undefined};
avp_header('Digest-CNonce') -> {113, 0, undefined};
avp_header('Digest-Domain') -> {119, 0, undefined};
avp_header('Digest-Entity-Body-Hash') ->
    {112, 0, undefined};
avp_header('Digest-HA1') -> {121, 0, undefined};
avp_header('Digest-Method') -> {108, 0, undefined};
avp_header('Digest-Nextnonce') -> {107, 0, undefined};
avp_header('Digest-Nonce') -> {105, 0, undefined};
avp_header('Digest-Nonce-Count') -> {114, 0, undefined};
avp_header('Digest-Opaque') -> {116, 0, undefined};
avp_header('Digest-Qop') -> {110, 0, undefined};
avp_header('Digest-Realm') -> {104, 0, undefined};
avp_header('Digest-Response') -> {103, 0, undefined};
avp_header('Digest-Response-Auth') ->
    {106, 0, undefined};
avp_header('Digest-Stale') -> {120, 0, undefined};
avp_header('Digest-URI') -> {109, 0, undefined};
avp_header('Digest-Username') -> {115, 0, undefined};
avp_header('SIP-AOR') -> {122, 0, undefined};
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Digest-AKA-Auts') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Algorithm') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Auth-Param') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-CNonce') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Domain') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Entity-Body-Hash') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-HA1') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Method') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Nextnonce') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Nonce') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Nonce-Count') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Opaque') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Qop') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Realm') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Response') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Response-Auth') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Stale') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-URI') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'Digest-Username') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'SIP-AOR') ->
    diameter_types:'OctetString'(T, Data);
avp(_, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value(Name) -> empty(Name).

dict() ->
    [1,
     {avp_types,
      [{"Digest-AKA-Auts", 118, "OctetString", []},
       {"Digest-Algorithm", 111, "OctetString", []},
       {"Digest-Auth-Param", 117, "OctetString", []},
       {"Digest-CNonce", 113, "OctetString", []},
       {"Digest-Domain", 119, "OctetString", []},
       {"Digest-Entity-Body-Hash", 112, "OctetString", []},
       {"Digest-HA1", 121, "OctetString", []},
       {"Digest-Method", 108, "OctetString", []},
       {"Digest-Nextnonce", 107, "OctetString", []},
       {"Digest-Nonce", 105, "OctetString", []},
       {"Digest-Nonce-Count", 114, "OctetString", []},
       {"Digest-Opaque", 116, "OctetString", []},
       {"Digest-Qop", 110, "OctetString", []},
       {"Digest-Realm", 104, "OctetString", []},
       {"Digest-Response", 103, "OctetString", []},
       {"Digest-Response-Auth", 106, "OctetString", []},
       {"Digest-Stale", 120, "OctetString", []},
       {"Digest-URI", 109, "OctetString", []},
       {"Digest-Username", 115, "OctetString", []},
       {"SIP-AOR", 122, "OctetString", []}]},
     {avp_vendor_id, []}, {codecs, []}, {command_codes, []},
     {custom_types, []}, {define, []}, {enum, []},
     {grouped, []}, {import_avps, []}, {import_enums, []},
     {import_groups, []}, {inherits, []}, {messages, []}].


