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

-module(rfc4740_sip).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records(['UAR', 'UAA', 'SAR', 'SAA', 'LIR',
		 'LIA', 'MAR', 'MAA', 'RTR', 'RTA', 'PPR', 'PPA',
		 'SIP-Accounting-Information', 'SIP-Server-Capabilities',
		 'SIP-Auth-Data-Item', 'SIP-Authenticate',
		 'SIP-Authorization', 'SIP-Authentication-Info',
		 'SIP-Deregistration-Reason', 'SIP-User-Data',
		 'Proxy-Info', 'Failed-AVP', 'Experimental-Result',
		 'Vendor-Specific-Application-Id', 'E2E-Sequence']).

-record('UAR',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'SIP-AOR', 'Destination-Host' = [],
	 'User-Name' = [], 'SIP-Visited-Network-Id' = [],
	 'SIP-User-Authorization-Type' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('UAA',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Session-State', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'SIP-Server-URI' = [],
	 'SIP-Server-Capabilities' = [],
	 'Authorization-Lifetime' = [], 'Auth-Grace-Period' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('SAR',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'SIP-Server-Assignment-Type',
	 'SIP-User-Data-Already-Available',
	 'Destination-Host' = [], 'User-Name' = [],
	 'SIP-Server-URI' = [],
	 'SIP-Supported-User-Data-Type' = [], 'SIP-AOR' = [],
	 'Proxy-Info' = [], 'Route-Record' = [], 'AVP' = []}).

-record('SAA',
	{'Session-Id', 'Auth-Application-Id', 'Result-Code',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'SIP-User-Data' = [], 'SIP-Accounting-Information' = [],
	 'SIP-Supported-User-Data-Type' = [], 'User-Name' = [],
	 'Auth-Grace-Period' = [], 'Authorization-Lifetime' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('LIR',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'SIP-AOR', 'Destination-Host' = [],
	 'Proxy-Info' = [], 'Route-Record' = [], 'AVP' = []}).

-record('LIA',
	{'Session-Id', 'Auth-Application-Id', 'Result-Code',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'SIP-Server-URI' = [], 'SIP-Server-Capabilities' = [],
	 'Auth-Grace-Period' = [], 'Authorization-Lifetime' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('MAR',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'SIP-AOR', 'SIP-Method',
	 'Destination-Host' = [], 'User-Name' = [],
	 'SIP-Server-URI' = [], 'SIP-Number-Auth-Items' = [],
	 'SIP-Auth-Data-Item' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('MAA',
	{'Session-Id', 'Auth-Application-Id', 'Result-Code',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'User-Name' = [], 'SIP-AOR' = [],
	 'SIP-Number-Auth-Items' = [], 'SIP-Auth-Data-Item' = [],
	 'Authorization-Lifetime' = [], 'Auth-Grace-Period' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('RTR',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Destination-Host', 'SIP-Deregistration-Reason',
	 'Destination-Realm' = [], 'User-Name' = [],
	 'SIP-AOR' = [], 'Proxy-Info' = [], 'Route-Record' = [],
	 'AVP' = []}).

-record('RTA',
	{'Session-Id', 'Auth-Application-Id', 'Result-Code',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Authorization-Lifetime' = [], 'Auth-Grace-Period' = [],
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('PPR',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'User-Name', 'SIP-User-Data' = [],
	 'SIP-Accounting-Information' = [],
	 'Destination-Host' = [], 'Authorization-Lifetime' = [],
	 'Auth-Grace-Period' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('PPA',
	{'Session-Id', 'Auth-Application-Id', 'Result-Code',
	 'Auth-Session-State', 'Origin-Host', 'Origin-Realm',
	 'Redirect-Host' = [], 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record('SIP-Accounting-Information',
	{'SIP-Accounting-Server-URI' = [],
	 'SIP-Credit-Control-Server-URI' = [], 'AVP' = []}).

-record('SIP-Server-Capabilities',
	{'SIP-Mandatory-Capability' = [],
	 'SIP-Optional-Capability' = [], 'SIP-Server-URI' = [],
	 'AVP' = []}).

-record('SIP-Auth-Data-Item',
	{'SIP-Authentication-Scheme', 'SIP-Item-Number' = [],
	 'SIP-Authenticate' = [], 'SIP-Authorization' = [],
	 'SIP-Authentication-Info' = [], 'AVP' = []}).

-record('SIP-Authenticate',
	{'Digest-Realm', 'Digest-Nonce', 'Digest-Domain' = [],
	 'Digest-Opaque' = [], 'Digest-Stale' = [],
	 'Digest-Algorithm' = [], 'Digest-Qop' = [],
	 'Digest-HA1' = [], 'Digest-Auth-Param' = [],
	 'AVP' = []}).

-record('SIP-Authorization',
	{'Digest-Username', 'Digest-Realm', 'Digest-Nonce',
	 'Digest-URI', 'Digest-Response',
	 'Digest-Algorithm' = [], 'Digest-CNonce' = [],
	 'Digest-Opaque' = [], 'Digest-Qop' = [],
	 'Digest-Nonce-Count' = [], 'Digest-Method' = [],
	 'Digest-Entity-Body-Hash' = [],
	 'Digest-Auth-Param' = [], 'AVP' = []}).

-record('SIP-Authentication-Info',
	{'Digest-Nextnonce' = [], 'Digest-Qop' = [],
	 'Digest-Response-Auth' = [], 'Digest-CNonce' = [],
	 'Digest-Nonce-Count' = [], 'AVP' = []}).

-record('SIP-Deregistration-Reason',
	{'SIP-Reason-Code', 'SIP-Reason-Info' = [],
	 'AVP' = []}).

-record('SIP-User-Data',
	{'SIP-User-Data-Type', 'SIP-User-Data-Contents',
	 'AVP' = []}).

-record('Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('Failed-AVP', {'AVP' = []}).

-record('Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('E2E-Sequence', {'AVP' = []}).

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/2, encode_avps/2, msg_name/2, msg_header/1,
	 rec2msg/1, msg2rec/1, name2rec/1, avp_name/2,
	 avp_arity/2, avp_header/1, avp/3, grouped_avp/3,
	 enumerated_avp/3, empty_value/1, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> rfc4740_sip.

id() -> 6.

vendor_id() -> erlang:error(undefined).

vendor_name() -> erlang:error(undefined).

msg_name(286, true) -> 'MAR';
msg_name(286, false) -> 'MAA';
msg_name(287, true) -> 'RTR';
msg_name(287, false) -> 'RTA';
msg_name(288, true) -> 'PPR';
msg_name(288, false) -> 'PPA';
msg_name(283, true) -> 'UAR';
msg_name(283, false) -> 'UAA';
msg_name(284, true) -> 'SAR';
msg_name(284, false) -> 'SAA';
msg_name(285, true) -> 'LIR';
msg_name(285, false) -> 'LIA';
msg_name(_, _) -> ''.

msg_header('UAR') -> {283, 192, 6};
msg_header('UAA') -> {283, 64, 6};
msg_header('SAR') -> {284, 192, 6};
msg_header('SAA') -> {284, 64, 6};
msg_header('LIR') -> {285, 192, 6};
msg_header('LIA') -> {285, 64, 6};
msg_header('MAR') -> {286, 192, 6};
msg_header('MAA') -> {286, 64, 6};
msg_header('RTR') -> {287, 192, 6};
msg_header('RTA') -> {287, 64, 6};
msg_header('PPR') -> {288, 192, 6};
msg_header('PPA') -> {288, 64, 6};
msg_header(_) -> erlang:error(badarg).

rec2msg('UAR') -> 'UAR';
rec2msg('UAA') -> 'UAA';
rec2msg('SAR') -> 'SAR';
rec2msg('SAA') -> 'SAA';
rec2msg('LIR') -> 'LIR';
rec2msg('LIA') -> 'LIA';
rec2msg('MAR') -> 'MAR';
rec2msg('MAA') -> 'MAA';
rec2msg('RTR') -> 'RTR';
rec2msg('RTA') -> 'RTA';
rec2msg('PPR') -> 'PPR';
rec2msg('PPA') -> 'PPA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('UAR') -> 'UAR';
msg2rec('UAA') -> 'UAA';
msg2rec('SAR') -> 'SAR';
msg2rec('SAA') -> 'SAA';
msg2rec('LIR') -> 'LIR';
msg2rec('LIA') -> 'LIA';
msg2rec('MAR') -> 'MAR';
msg2rec('MAA') -> 'MAA';
msg2rec('RTR') -> 'RTR';
msg2rec('RTA') -> 'RTA';
msg2rec('PPR') -> 'PPR';
msg2rec('PPA') -> 'PPA';
msg2rec(_) -> erlang:error(badarg).

name2rec('SIP-Accounting-Information') ->
    'SIP-Accounting-Information';
name2rec('SIP-Server-Capabilities') ->
    'SIP-Server-Capabilities';
name2rec('SIP-Auth-Data-Item') -> 'SIP-Auth-Data-Item';
name2rec('SIP-Authenticate') -> 'SIP-Authenticate';
name2rec('SIP-Authorization') -> 'SIP-Authorization';
name2rec('SIP-Authentication-Info') ->
    'SIP-Authentication-Info';
name2rec('SIP-Deregistration-Reason') ->
    'SIP-Deregistration-Reason';
name2rec('SIP-User-Data') -> 'SIP-User-Data';
name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec('E2E-Sequence') -> 'E2E-Sequence';
name2rec(T) -> msg2rec(T).

avp_name(368, undefined) ->
    {'SIP-Accounting-Information', 'Grouped'};
avp_name(369, undefined) ->
    {'SIP-Accounting-Server-URI', 'DiameterURI'};
avp_name(376, undefined) ->
    {'SIP-Auth-Data-Item', 'Grouped'};
avp_name(379, undefined) ->
    {'SIP-Authenticate', 'Grouped'};
avp_name(381, undefined) ->
    {'SIP-Authentication-Info', 'Grouped'};
avp_name(377, undefined) ->
    {'SIP-Authentication-Scheme', 'Enumerated'};
avp_name(380, undefined) ->
    {'SIP-Authorization', 'Grouped'};
avp_name(370, undefined) ->
    {'SIP-Credit-Control-Server-URI', 'DiameterURI'};
avp_name(383, undefined) ->
    {'SIP-Deregistration-Reason', 'Grouped'};
avp_name(378, undefined) ->
    {'SIP-Item-Number', 'Unsigned32'};
avp_name(373, undefined) ->
    {'SIP-Mandatory-Capability', 'Unsigned32'};
avp_name(393, undefined) ->
    {'SIP-Method', 'UTF8String'};
avp_name(382, undefined) ->
    {'SIP-Number-Auth-Items', 'Unsigned32'};
avp_name(374, undefined) ->
    {'SIP-Optional-Capability', 'Unsigned32'};
avp_name(384, undefined) ->
    {'SIP-Reason-Code', 'Enumerated'};
avp_name(385, undefined) ->
    {'SIP-Reason-Info', 'UTF8String'};
avp_name(375, undefined) ->
    {'SIP-Server-Assignment-Type', 'Enumerated'};
avp_name(372, undefined) ->
    {'SIP-Server-Capabilities', 'Grouped'};
avp_name(371, undefined) ->
    {'SIP-Server-URI', 'UTF8String'};
avp_name(388, undefined) ->
    {'SIP-Supported-User-Data-Type', 'UTF8String'};
avp_name(387, undefined) ->
    {'SIP-User-Authorization-Type', 'Enumerated'};
avp_name(389, undefined) ->
    {'SIP-User-Data', 'Grouped'};
avp_name(392, undefined) ->
    {'SIP-User-Data-Already-Available', 'Enumerated'};
avp_name(391, undefined) ->
    {'SIP-User-Data-Contents', 'OctetString'};
avp_name(390, undefined) ->
    {'SIP-User-Data-Type', 'UTF8String'};
avp_name(386, undefined) ->
    {'SIP-Visited-Network-Id', 'UTF8String'};
avp_name(483, undefined) ->
    {'Accounting-Realtime-Required', 'Enumerated'};
avp_name(485, undefined) ->
    {'Accounting-Record-Number', 'Unsigned32'};
avp_name(480, undefined) ->
    {'Accounting-Record-Type', 'Enumerated'};
avp_name(287, undefined) ->
    {'Accounting-Sub-Session-Id', 'Unsigned64'};
avp_name(259, undefined) ->
    {'Acct-Application-Id', 'Unsigned32'};
avp_name(85, undefined) ->
    {'Acct-Interim-Interval', 'Unsigned32'};
avp_name(50, undefined) ->
    {'Acct-Multi-Session-Id', 'UTF8String'};
avp_name(44, undefined) ->
    {'Acct-Session-Id', 'OctetString'};
avp_name(258, undefined) ->
    {'Auth-Application-Id', 'Unsigned32'};
avp_name(276, undefined) ->
    {'Auth-Grace-Period', 'Unsigned32'};
avp_name(274, undefined) ->
    {'Auth-Request-Type', 'Enumerated'};
avp_name(277, undefined) ->
    {'Auth-Session-State', 'Enumerated'};
avp_name(291, undefined) ->
    {'Authorization-Lifetime', 'Unsigned32'};
avp_name(25, undefined) -> {'Class', 'OctetString'};
avp_name(293, undefined) ->
    {'Destination-Host', 'DiameterIdentity'};
avp_name(283, undefined) ->
    {'Destination-Realm', 'DiameterIdentity'};
avp_name(273, undefined) ->
    {'Disconnect-Cause', 'Enumerated'};
avp_name(300, undefined) -> {'E2E-Sequence', 'Grouped'};
avp_name(281, undefined) ->
    {'Error-Message', 'UTF8String'};
avp_name(294, undefined) ->
    {'Error-Reporting-Host', 'DiameterIdentity'};
avp_name(55, undefined) -> {'Event-Timestamp', 'Time'};
avp_name(297, undefined) ->
    {'Experimental-Result', 'Grouped'};
avp_name(298, undefined) ->
    {'Experimental-Result-Code', 'Unsigned32'};
avp_name(279, undefined) -> {'Failed-AVP', 'Grouped'};
avp_name(267, undefined) ->
    {'Firmware-Revision', 'Unsigned32'};
avp_name(257, undefined) ->
    {'Host-IP-Address', 'Address'};
avp_name(299, undefined) ->
    {'Inband-Security-Id', 'Unsigned32'};
avp_name(272, undefined) ->
    {'Multi-Round-Time-Out', 'Unsigned32'};
avp_name(264, undefined) ->
    {'Origin-Host', 'DiameterIdentity'};
avp_name(296, undefined) ->
    {'Origin-Realm', 'DiameterIdentity'};
avp_name(278, undefined) ->
    {'Origin-State-Id', 'Unsigned32'};
avp_name(269, undefined) ->
    {'Product-Name', 'UTF8String'};
avp_name(280, undefined) ->
    {'Proxy-Host', 'DiameterIdentity'};
avp_name(284, undefined) -> {'Proxy-Info', 'Grouped'};
avp_name(33, undefined) ->
    {'Proxy-State', 'OctetString'};
avp_name(285, undefined) ->
    {'Re-Auth-Request-Type', 'Enumerated'};
avp_name(292, undefined) ->
    {'Redirect-Host', 'DiameterURI'};
avp_name(261, undefined) ->
    {'Redirect-Host-Usage', 'Enumerated'};
avp_name(262, undefined) ->
    {'Redirect-Max-Cache-Time', 'Unsigned32'};
avp_name(268, undefined) ->
    {'Result-Code', 'Unsigned32'};
avp_name(282, undefined) ->
    {'Route-Record', 'DiameterIdentity'};
avp_name(270, undefined) ->
    {'Session-Binding', 'Unsigned32'};
avp_name(263, undefined) ->
    {'Session-Id', 'UTF8String'};
avp_name(271, undefined) ->
    {'Session-Server-Failover', 'Enumerated'};
avp_name(27, undefined) ->
    {'Session-Timeout', 'Unsigned32'};
avp_name(265, undefined) ->
    {'Supported-Vendor-Id', 'Unsigned32'};
avp_name(295, undefined) ->
    {'Termination-Cause', 'Enumerated'};
avp_name(1, undefined) -> {'User-Name', 'UTF8String'};
avp_name(266, undefined) -> {'Vendor-Id', 'Unsigned32'};
avp_name(260, undefined) ->
    {'Vendor-Specific-Application-Id', 'Grouped'};
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

avp_arity('UAR', 'Session-Id') -> 1;
avp_arity('UAR', 'Auth-Application-Id') -> 1;
avp_arity('UAR', 'Auth-Session-State') -> 1;
avp_arity('UAR', 'Origin-Host') -> 1;
avp_arity('UAR', 'Origin-Realm') -> 1;
avp_arity('UAR', 'Destination-Realm') -> 1;
avp_arity('UAR', 'SIP-AOR') -> 1;
avp_arity('UAR', 'Destination-Host') -> {0, 1};
avp_arity('UAR', 'User-Name') -> {0, 1};
avp_arity('UAR', 'SIP-Visited-Network-Id') -> {0, 1};
avp_arity('UAR', 'SIP-User-Authorization-Type') ->
    {0, 1};
avp_arity('UAR', 'Proxy-Info') -> {0, '*'};
avp_arity('UAR', 'Route-Record') -> {0, '*'};
avp_arity('UAR', 'AVP') -> {0, '*'};
avp_arity('UAA', 'Session-Id') -> 1;
avp_arity('UAA', 'Auth-Application-Id') -> 1;
avp_arity('UAA', 'Auth-Session-State') -> 1;
avp_arity('UAA', 'Result-Code') -> 1;
avp_arity('UAA', 'Origin-Host') -> 1;
avp_arity('UAA', 'Origin-Realm') -> 1;
avp_arity('UAA', 'SIP-Server-URI') -> {0, 1};
avp_arity('UAA', 'SIP-Server-Capabilities') -> {0, 1};
avp_arity('UAA', 'Authorization-Lifetime') -> {0, 1};
avp_arity('UAA', 'Auth-Grace-Period') -> {0, 1};
avp_arity('UAA', 'Redirect-Host') -> {0, 1};
avp_arity('UAA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('UAA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('UAA', 'Proxy-Info') -> {0, '*'};
avp_arity('UAA', 'Route-Record') -> {0, '*'};
avp_arity('UAA', 'AVP') -> {0, '*'};
avp_arity('SAR', 'Session-Id') -> 1;
avp_arity('SAR', 'Auth-Application-Id') -> 1;
avp_arity('SAR', 'Auth-Session-State') -> 1;
avp_arity('SAR', 'Origin-Host') -> 1;
avp_arity('SAR', 'Origin-Realm') -> 1;
avp_arity('SAR', 'Destination-Realm') -> 1;
avp_arity('SAR', 'SIP-Server-Assignment-Type') -> 1;
avp_arity('SAR', 'SIP-User-Data-Already-Available') ->
    1;
avp_arity('SAR', 'Destination-Host') -> {0, 1};
avp_arity('SAR', 'User-Name') -> {0, 1};
avp_arity('SAR', 'SIP-Server-URI') -> {0, 1};
avp_arity('SAR', 'SIP-Supported-User-Data-Type') ->
    {0, '*'};
avp_arity('SAR', 'SIP-AOR') -> {0, '*'};
avp_arity('SAR', 'Proxy-Info') -> {0, '*'};
avp_arity('SAR', 'Route-Record') -> {0, '*'};
avp_arity('SAR', 'AVP') -> {0, '*'};
avp_arity('SAA', 'Session-Id') -> 1;
avp_arity('SAA', 'Auth-Application-Id') -> 1;
avp_arity('SAA', 'Result-Code') -> 1;
avp_arity('SAA', 'Auth-Session-State') -> 1;
avp_arity('SAA', 'Origin-Host') -> 1;
avp_arity('SAA', 'Origin-Realm') -> 1;
avp_arity('SAA', 'SIP-User-Data') -> {0, '*'};
avp_arity('SAA', 'SIP-Accounting-Information') ->
    {0, 1};
avp_arity('SAA', 'SIP-Supported-User-Data-Type') ->
    {0, '*'};
avp_arity('SAA', 'User-Name') -> {0, 1};
avp_arity('SAA', 'Auth-Grace-Period') -> {0, 1};
avp_arity('SAA', 'Authorization-Lifetime') -> {0, 1};
avp_arity('SAA', 'Redirect-Host') -> {0, 1};
avp_arity('SAA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('SAA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('SAA', 'Proxy-Info') -> {0, '*'};
avp_arity('SAA', 'Route-Record') -> {0, '*'};
avp_arity('SAA', 'AVP') -> {0, '*'};
avp_arity('LIR', 'Session-Id') -> 1;
avp_arity('LIR', 'Auth-Application-Id') -> 1;
avp_arity('LIR', 'Auth-Session-State') -> 1;
avp_arity('LIR', 'Origin-Host') -> 1;
avp_arity('LIR', 'Origin-Realm') -> 1;
avp_arity('LIR', 'Destination-Realm') -> 1;
avp_arity('LIR', 'SIP-AOR') -> 1;
avp_arity('LIR', 'Destination-Host') -> {0, 1};
avp_arity('LIR', 'Proxy-Info') -> {0, '*'};
avp_arity('LIR', 'Route-Record') -> {0, '*'};
avp_arity('LIR', 'AVP') -> {0, '*'};
avp_arity('LIA', 'Session-Id') -> 1;
avp_arity('LIA', 'Auth-Application-Id') -> 1;
avp_arity('LIA', 'Result-Code') -> 1;
avp_arity('LIA', 'Auth-Session-State') -> 1;
avp_arity('LIA', 'Origin-Host') -> 1;
avp_arity('LIA', 'Origin-Realm') -> 1;
avp_arity('LIA', 'SIP-Server-URI') -> {0, 1};
avp_arity('LIA', 'SIP-Server-Capabilities') -> {0, 1};
avp_arity('LIA', 'Auth-Grace-Period') -> {0, 1};
avp_arity('LIA', 'Authorization-Lifetime') -> {0, 1};
avp_arity('LIA', 'Redirect-Host') -> {0, 1};
avp_arity('LIA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('LIA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('LIA', 'Proxy-Info') -> {0, '*'};
avp_arity('LIA', 'Route-Record') -> {0, '*'};
avp_arity('LIA', 'AVP') -> {0, '*'};
avp_arity('MAR', 'Session-Id') -> 1;
avp_arity('MAR', 'Auth-Application-Id') -> 1;
avp_arity('MAR', 'Auth-Session-State') -> 1;
avp_arity('MAR', 'Origin-Host') -> 1;
avp_arity('MAR', 'Origin-Realm') -> 1;
avp_arity('MAR', 'Destination-Realm') -> 1;
avp_arity('MAR', 'SIP-AOR') -> 1;
avp_arity('MAR', 'SIP-Method') -> 1;
avp_arity('MAR', 'Destination-Host') -> {0, 1};
avp_arity('MAR', 'User-Name') -> {0, 1};
avp_arity('MAR', 'SIP-Server-URI') -> {0, 1};
avp_arity('MAR', 'SIP-Number-Auth-Items') -> {0, 1};
avp_arity('MAR', 'SIP-Auth-Data-Item') -> {0, 1};
avp_arity('MAR', 'Proxy-Info') -> {0, '*'};
avp_arity('MAR', 'Route-Record') -> {0, '*'};
avp_arity('MAR', 'AVP') -> {0, '*'};
avp_arity('MAA', 'Session-Id') -> 1;
avp_arity('MAA', 'Auth-Application-Id') -> 1;
avp_arity('MAA', 'Result-Code') -> 1;
avp_arity('MAA', 'Auth-Session-State') -> 1;
avp_arity('MAA', 'Origin-Host') -> 1;
avp_arity('MAA', 'Origin-Realm') -> 1;
avp_arity('MAA', 'User-Name') -> {0, 1};
avp_arity('MAA', 'SIP-AOR') -> {0, 1};
avp_arity('MAA', 'SIP-Number-Auth-Items') -> {0, 1};
avp_arity('MAA', 'SIP-Auth-Data-Item') -> {0, '*'};
avp_arity('MAA', 'Authorization-Lifetime') -> {0, 1};
avp_arity('MAA', 'Auth-Grace-Period') -> {0, 1};
avp_arity('MAA', 'Redirect-Host') -> {0, 1};
avp_arity('MAA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('MAA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('MAA', 'Proxy-Info') -> {0, '*'};
avp_arity('MAA', 'Route-Record') -> {0, '*'};
avp_arity('MAA', 'AVP') -> {0, '*'};
avp_arity('RTR', 'Session-Id') -> 1;
avp_arity('RTR', 'Auth-Application-Id') -> 1;
avp_arity('RTR', 'Auth-Session-State') -> 1;
avp_arity('RTR', 'Origin-Host') -> 1;
avp_arity('RTR', 'Origin-Realm') -> 1;
avp_arity('RTR', 'Destination-Host') -> 1;
avp_arity('RTR', 'SIP-Deregistration-Reason') -> 1;
avp_arity('RTR', 'Destination-Realm') -> {0, 1};
avp_arity('RTR', 'User-Name') -> {0, 1};
avp_arity('RTR', 'SIP-AOR') -> {0, '*'};
avp_arity('RTR', 'Proxy-Info') -> {0, '*'};
avp_arity('RTR', 'Route-Record') -> {0, '*'};
avp_arity('RTR', 'AVP') -> {0, '*'};
avp_arity('RTA', 'Session-Id') -> 1;
avp_arity('RTA', 'Auth-Application-Id') -> 1;
avp_arity('RTA', 'Result-Code') -> 1;
avp_arity('RTA', 'Auth-Session-State') -> 1;
avp_arity('RTA', 'Origin-Host') -> 1;
avp_arity('RTA', 'Origin-Realm') -> 1;
avp_arity('RTA', 'Authorization-Lifetime') -> {0, 1};
avp_arity('RTA', 'Auth-Grace-Period') -> {0, 1};
avp_arity('RTA', 'Redirect-Host') -> {0, 1};
avp_arity('RTA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('RTA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('RTA', 'Proxy-Info') -> {0, '*'};
avp_arity('RTA', 'Route-Record') -> {0, '*'};
avp_arity('RTA', 'AVP') -> {0, '*'};
avp_arity('PPR', 'Session-Id') -> 1;
avp_arity('PPR', 'Auth-Application-Id') -> 1;
avp_arity('PPR', 'Auth-Session-State') -> 1;
avp_arity('PPR', 'Origin-Host') -> 1;
avp_arity('PPR', 'Origin-Realm') -> 1;
avp_arity('PPR', 'Destination-Realm') -> 1;
avp_arity('PPR', 'User-Name') -> 1;
avp_arity('PPR', 'SIP-User-Data') -> {0, '*'};
avp_arity('PPR', 'SIP-Accounting-Information') ->
    {0, 1};
avp_arity('PPR', 'Destination-Host') -> {0, 1};
avp_arity('PPR', 'Authorization-Lifetime') -> {0, 1};
avp_arity('PPR', 'Auth-Grace-Period') -> {0, 1};
avp_arity('PPR', 'Proxy-Info') -> {0, '*'};
avp_arity('PPR', 'Route-Record') -> {0, '*'};
avp_arity('PPR', 'AVP') -> {0, '*'};
avp_arity('PPA', 'Session-Id') -> 1;
avp_arity('PPA', 'Auth-Application-Id') -> 1;
avp_arity('PPA', 'Result-Code') -> 1;
avp_arity('PPA', 'Auth-Session-State') -> 1;
avp_arity('PPA', 'Origin-Host') -> 1;
avp_arity('PPA', 'Origin-Realm') -> 1;
avp_arity('PPA', 'Redirect-Host') -> {0, 1};
avp_arity('PPA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('PPA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('PPA', 'Proxy-Info') -> {0, '*'};
avp_arity('PPA', 'Route-Record') -> {0, '*'};
avp_arity('PPA', 'AVP') -> {0, '*'};
avp_arity('SIP-Accounting-Information',
	  'SIP-Accounting-Server-URI') ->
    {0, '*'};
avp_arity('SIP-Accounting-Information',
	  'SIP-Credit-Control-Server-URI') ->
    {0, '*'};
avp_arity('SIP-Accounting-Information', 'AVP') ->
    {0, '*'};
avp_arity('SIP-Server-Capabilities',
	  'SIP-Mandatory-Capability') ->
    {0, '*'};
avp_arity('SIP-Server-Capabilities',
	  'SIP-Optional-Capability') ->
    {0, '*'};
avp_arity('SIP-Server-Capabilities',
	  'SIP-Server-URI') ->
    {0, '*'};
avp_arity('SIP-Server-Capabilities', 'AVP') -> {0, '*'};
avp_arity('SIP-Auth-Data-Item',
	  'SIP-Authentication-Scheme') ->
    1;
avp_arity('SIP-Auth-Data-Item', 'SIP-Item-Number') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'SIP-Authenticate') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'SIP-Authorization') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item',
	  'SIP-Authentication-Info') ->
    {0, 1};
avp_arity('SIP-Auth-Data-Item', 'AVP') -> {0, '*'};
avp_arity('SIP-Authenticate', 'Digest-Realm') -> 1;
avp_arity('SIP-Authenticate', 'Digest-Nonce') -> 1;
avp_arity('SIP-Authenticate', 'Digest-Domain') ->
    {0, 1};
avp_arity('SIP-Authenticate', 'Digest-Opaque') ->
    {0, 1};
avp_arity('SIP-Authenticate', 'Digest-Stale') -> {0, 1};
avp_arity('SIP-Authenticate', 'Digest-Algorithm') ->
    {0, 1};
avp_arity('SIP-Authenticate', 'Digest-Qop') -> {0, 1};
avp_arity('SIP-Authenticate', 'Digest-HA1') -> {0, 1};
avp_arity('SIP-Authenticate', 'Digest-Auth-Param') ->
    {0, '*'};
avp_arity('SIP-Authenticate', 'AVP') -> {0, '*'};
avp_arity('SIP-Authorization', 'Digest-Username') -> 1;
avp_arity('SIP-Authorization', 'Digest-Realm') -> 1;
avp_arity('SIP-Authorization', 'Digest-Nonce') -> 1;
avp_arity('SIP-Authorization', 'Digest-URI') -> 1;
avp_arity('SIP-Authorization', 'Digest-Response') -> 1;
avp_arity('SIP-Authorization', 'Digest-Algorithm') ->
    {0, 1};
avp_arity('SIP-Authorization', 'Digest-CNonce') ->
    {0, 1};
avp_arity('SIP-Authorization', 'Digest-Opaque') ->
    {0, 1};
avp_arity('SIP-Authorization', 'Digest-Qop') -> {0, 1};
avp_arity('SIP-Authorization', 'Digest-Nonce-Count') ->
    {0, 1};
avp_arity('SIP-Authorization', 'Digest-Method') ->
    {0, 1};
avp_arity('SIP-Authorization',
	  'Digest-Entity-Body-Hash') ->
    {0, 1};
avp_arity('SIP-Authorization', 'Digest-Auth-Param') ->
    {0, '*'};
avp_arity('SIP-Authorization', 'AVP') -> {0, '*'};
avp_arity('SIP-Authentication-Info',
	  'Digest-Nextnonce') ->
    {0, 1};
avp_arity('SIP-Authentication-Info', 'Digest-Qop') ->
    {0, 1};
avp_arity('SIP-Authentication-Info',
	  'Digest-Response-Auth') ->
    {0, 1};
avp_arity('SIP-Authentication-Info', 'Digest-CNonce') ->
    {0, 1};
avp_arity('SIP-Authentication-Info',
	  'Digest-Nonce-Count') ->
    {0, 1};
avp_arity('SIP-Authentication-Info', 'AVP') -> {0, '*'};
avp_arity('SIP-Deregistration-Reason',
	  'SIP-Reason-Code') ->
    1;
avp_arity('SIP-Deregistration-Reason',
	  'SIP-Reason-Info') ->
    {0, 1};
avp_arity('SIP-Deregistration-Reason', 'AVP') ->
    {0, '*'};
avp_arity('SIP-User-Data', 'SIP-User-Data-Type') -> 1;
avp_arity('SIP-User-Data', 'SIP-User-Data-Contents') ->
    1;
avp_arity('SIP-User-Data', 'AVP') -> {0, '*'};
avp_arity('Proxy-Info', 'Proxy-Host') -> 1;
avp_arity('Proxy-Info', 'Proxy-State') -> 1;
avp_arity('Proxy-Info', 'AVP') -> {0, '*'};
avp_arity('Failed-AVP', 'AVP') -> {1, '*'};
avp_arity('Experimental-Result', 'Vendor-Id') -> 1;
avp_arity('Experimental-Result',
	  'Experimental-Result-Code') ->
    1;
avp_arity('Vendor-Specific-Application-Id',
	  'Vendor-Id') ->
    {1, '*'};
avp_arity('Vendor-Specific-Application-Id',
	  'Auth-Application-Id') ->
    {0, 1};
avp_arity('Vendor-Specific-Application-Id',
	  'Acct-Application-Id') ->
    {0, 1};
avp_arity('E2E-Sequence', 'AVP') -> {2, '*'};
avp_arity(_, _) -> 0.

avp_header('SIP-Accounting-Information') ->
    {368, 64, undefined};
avp_header('SIP-Accounting-Server-URI') ->
    {369, 64, undefined};
avp_header('SIP-Auth-Data-Item') ->
    {376, 64, undefined};
avp_header('SIP-Authenticate') -> {379, 64, undefined};
avp_header('SIP-Authentication-Info') ->
    {381, 64, undefined};
avp_header('SIP-Authentication-Scheme') ->
    {377, 64, undefined};
avp_header('SIP-Authorization') -> {380, 64, undefined};
avp_header('SIP-Credit-Control-Server-URI') ->
    {370, 64, undefined};
avp_header('SIP-Deregistration-Reason') ->
    {383, 64, undefined};
avp_header('SIP-Item-Number') -> {378, 64, undefined};
avp_header('SIP-Mandatory-Capability') ->
    {373, 64, undefined};
avp_header('SIP-Method') -> {393, 64, undefined};
avp_header('SIP-Number-Auth-Items') ->
    {382, 64, undefined};
avp_header('SIP-Optional-Capability') ->
    {374, 64, undefined};
avp_header('SIP-Reason-Code') -> {384, 64, undefined};
avp_header('SIP-Reason-Info') -> {385, 64, undefined};
avp_header('SIP-Server-Assignment-Type') ->
    {375, 64, undefined};
avp_header('SIP-Server-Capabilities') ->
    {372, 64, undefined};
avp_header('SIP-Server-URI') -> {371, 64, undefined};
avp_header('SIP-Supported-User-Data-Type') ->
    {388, 64, undefined};
avp_header('SIP-User-Authorization-Type') ->
    {387, 64, undefined};
avp_header('SIP-User-Data') -> {389, 64, undefined};
avp_header('SIP-User-Data-Already-Available') ->
    {392, 64, undefined};
avp_header('SIP-User-Data-Contents') ->
    {391, 64, undefined};
avp_header('SIP-User-Data-Type') ->
    {390, 64, undefined};
avp_header('SIP-Visited-Network-Id') ->
    {386, 64, undefined};
avp_header('Accounting-Realtime-Required') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Realtime-Required');
avp_header('Accounting-Record-Number') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Record-Number');
avp_header('Accounting-Record-Type') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Record-Type');
avp_header('Accounting-Sub-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Accounting-Sub-Session-Id');
avp_header('Acct-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Application-Id');
avp_header('Acct-Interim-Interval') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Interim-Interval');
avp_header('Acct-Multi-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Multi-Session-Id');
avp_header('Acct-Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Acct-Session-Id');
avp_header('Auth-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Application-Id');
avp_header('Auth-Grace-Period') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Grace-Period');
avp_header('Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Request-Type');
avp_header('Auth-Session-State') ->
    diameter_gen_base_rfc3588:avp_header('Auth-Session-State');
avp_header('Authorization-Lifetime') ->
    diameter_gen_base_rfc3588:avp_header('Authorization-Lifetime');
avp_header('Class') ->
    diameter_gen_base_rfc3588:avp_header('Class');
avp_header('Destination-Host') ->
    diameter_gen_base_rfc3588:avp_header('Destination-Host');
avp_header('Destination-Realm') ->
    diameter_gen_base_rfc3588:avp_header('Destination-Realm');
avp_header('Disconnect-Cause') ->
    diameter_gen_base_rfc3588:avp_header('Disconnect-Cause');
avp_header('E2E-Sequence') ->
    diameter_gen_base_rfc3588:avp_header('E2E-Sequence');
avp_header('Error-Message') ->
    diameter_gen_base_rfc3588:avp_header('Error-Message');
avp_header('Error-Reporting-Host') ->
    diameter_gen_base_rfc3588:avp_header('Error-Reporting-Host');
avp_header('Event-Timestamp') ->
    diameter_gen_base_rfc3588:avp_header('Event-Timestamp');
avp_header('Experimental-Result') ->
    diameter_gen_base_rfc3588:avp_header('Experimental-Result');
avp_header('Experimental-Result-Code') ->
    diameter_gen_base_rfc3588:avp_header('Experimental-Result-Code');
avp_header('Failed-AVP') ->
    diameter_gen_base_rfc3588:avp_header('Failed-AVP');
avp_header('Firmware-Revision') ->
    diameter_gen_base_rfc3588:avp_header('Firmware-Revision');
avp_header('Host-IP-Address') ->
    diameter_gen_base_rfc3588:avp_header('Host-IP-Address');
avp_header('Inband-Security-Id') ->
    diameter_gen_base_rfc3588:avp_header('Inband-Security-Id');
avp_header('Multi-Round-Time-Out') ->
    diameter_gen_base_rfc3588:avp_header('Multi-Round-Time-Out');
avp_header('Origin-Host') ->
    diameter_gen_base_rfc3588:avp_header('Origin-Host');
avp_header('Origin-Realm') ->
    diameter_gen_base_rfc3588:avp_header('Origin-Realm');
avp_header('Origin-State-Id') ->
    diameter_gen_base_rfc3588:avp_header('Origin-State-Id');
avp_header('Product-Name') ->
    diameter_gen_base_rfc3588:avp_header('Product-Name');
avp_header('Proxy-Host') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-Host');
avp_header('Proxy-Info') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-Info');
avp_header('Proxy-State') ->
    diameter_gen_base_rfc3588:avp_header('Proxy-State');
avp_header('Re-Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp_header('Re-Auth-Request-Type');
avp_header('Redirect-Host') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Host');
avp_header('Redirect-Host-Usage') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Host-Usage');
avp_header('Redirect-Max-Cache-Time') ->
    diameter_gen_base_rfc3588:avp_header('Redirect-Max-Cache-Time');
avp_header('Result-Code') ->
    diameter_gen_base_rfc3588:avp_header('Result-Code');
avp_header('Route-Record') ->
    diameter_gen_base_rfc3588:avp_header('Route-Record');
avp_header('Session-Binding') ->
    diameter_gen_base_rfc3588:avp_header('Session-Binding');
avp_header('Session-Id') ->
    diameter_gen_base_rfc3588:avp_header('Session-Id');
avp_header('Session-Server-Failover') ->
    diameter_gen_base_rfc3588:avp_header('Session-Server-Failover');
avp_header('Session-Timeout') ->
    diameter_gen_base_rfc3588:avp_header('Session-Timeout');
avp_header('Supported-Vendor-Id') ->
    diameter_gen_base_rfc3588:avp_header('Supported-Vendor-Id');
avp_header('Termination-Cause') ->
    diameter_gen_base_rfc3588:avp_header('Termination-Cause');
avp_header('User-Name') ->
    diameter_gen_base_rfc3588:avp_header('User-Name');
avp_header('Vendor-Id') ->
    diameter_gen_base_rfc3588:avp_header('Vendor-Id');
avp_header('Vendor-Specific-Application-Id') ->
    diameter_gen_base_rfc3588:avp_header('Vendor-Specific-Application-Id');
avp_header('Digest-AKA-Auts') ->
    rfc4590_digest:avp_header('Digest-AKA-Auts');
avp_header('Digest-Algorithm') ->
    rfc4590_digest:avp_header('Digest-Algorithm');
avp_header('Digest-Auth-Param') ->
    rfc4590_digest:avp_header('Digest-Auth-Param');
avp_header('Digest-CNonce') ->
    rfc4590_digest:avp_header('Digest-CNonce');
avp_header('Digest-Domain') ->
    rfc4590_digest:avp_header('Digest-Domain');
avp_header('Digest-Entity-Body-Hash') ->
    rfc4590_digest:avp_header('Digest-Entity-Body-Hash');
avp_header('Digest-HA1') ->
    rfc4590_digest:avp_header('Digest-HA1');
avp_header('Digest-Method') ->
    rfc4590_digest:avp_header('Digest-Method');
avp_header('Digest-Nextnonce') ->
    rfc4590_digest:avp_header('Digest-Nextnonce');
avp_header('Digest-Nonce') ->
    rfc4590_digest:avp_header('Digest-Nonce');
avp_header('Digest-Nonce-Count') ->
    rfc4590_digest:avp_header('Digest-Nonce-Count');
avp_header('Digest-Opaque') ->
    rfc4590_digest:avp_header('Digest-Opaque');
avp_header('Digest-Qop') ->
    rfc4590_digest:avp_header('Digest-Qop');
avp_header('Digest-Realm') ->
    rfc4590_digest:avp_header('Digest-Realm');
avp_header('Digest-Response') ->
    rfc4590_digest:avp_header('Digest-Response');
avp_header('Digest-Response-Auth') ->
    rfc4590_digest:avp_header('Digest-Response-Auth');
avp_header('Digest-Stale') ->
    rfc4590_digest:avp_header('Digest-Stale');
avp_header('Digest-URI') ->
    rfc4590_digest:avp_header('Digest-URI');
avp_header('Digest-Username') ->
    rfc4590_digest:avp_header('Digest-Username');
avp_header('SIP-AOR') ->
    rfc4590_digest:avp_header('SIP-AOR');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'SIP-Accounting-Information') ->
    grouped_avp(T, 'SIP-Accounting-Information', Data);
avp(T, Data, 'SIP-Accounting-Server-URI') ->
    diameter_types:'DiameterURI'(T, Data);
avp(T, Data, 'SIP-Auth-Data-Item') ->
    grouped_avp(T, 'SIP-Auth-Data-Item', Data);
avp(T, Data, 'SIP-Authenticate') ->
    grouped_avp(T, 'SIP-Authenticate', Data);
avp(T, Data, 'SIP-Authentication-Info') ->
    grouped_avp(T, 'SIP-Authentication-Info', Data);
avp(T, Data, 'SIP-Authentication-Scheme') ->
    enumerated_avp(T, 'SIP-Authentication-Scheme', Data);
avp(T, Data, 'SIP-Authorization') ->
    grouped_avp(T, 'SIP-Authorization', Data);
avp(T, Data, 'SIP-Credit-Control-Server-URI') ->
    diameter_types:'DiameterURI'(T, Data);
avp(T, Data, 'SIP-Deregistration-Reason') ->
    grouped_avp(T, 'SIP-Deregistration-Reason', Data);
avp(T, Data, 'SIP-Item-Number') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'SIP-Mandatory-Capability') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'SIP-Method') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Number-Auth-Items') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'SIP-Optional-Capability') ->
    diameter_types:'Unsigned32'(T, Data);
avp(T, Data, 'SIP-Reason-Code') ->
    enumerated_avp(T, 'SIP-Reason-Code', Data);
avp(T, Data, 'SIP-Reason-Info') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Server-Assignment-Type') ->
    enumerated_avp(T, 'SIP-Server-Assignment-Type', Data);
avp(T, Data, 'SIP-Server-Capabilities') ->
    grouped_avp(T, 'SIP-Server-Capabilities', Data);
avp(T, Data, 'SIP-Server-URI') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Supported-User-Data-Type') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-User-Authorization-Type') ->
    enumerated_avp(T, 'SIP-User-Authorization-Type', Data);
avp(T, Data, 'SIP-User-Data') ->
    grouped_avp(T, 'SIP-User-Data', Data);
avp(T, Data, 'SIP-User-Data-Already-Available') ->
    enumerated_avp(T, 'SIP-User-Data-Already-Available',
		   Data);
avp(T, Data, 'SIP-User-Data-Contents') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'SIP-User-Data-Type') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'SIP-Visited-Network-Id') ->
    diameter_types:'UTF8String'(T, Data);
avp(T, Data, 'Accounting-Realtime-Required') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Realtime-Required');
avp(T, Data, 'Accounting-Record-Number') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Record-Number');
avp(T, Data, 'Accounting-Record-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Record-Type');
avp(T, Data, 'Accounting-Sub-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Accounting-Sub-Session-Id');
avp(T, Data, 'Acct-Application-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Application-Id');
avp(T, Data, 'Acct-Interim-Interval') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Interim-Interval');
avp(T, Data, 'Acct-Multi-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Multi-Session-Id');
avp(T, Data, 'Acct-Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Acct-Session-Id');
avp(T, Data, 'Auth-Application-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Application-Id');
avp(T, Data, 'Auth-Grace-Period') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Grace-Period');
avp(T, Data, 'Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Request-Type');
avp(T, Data, 'Auth-Session-State') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Auth-Session-State');
avp(T, Data, 'Authorization-Lifetime') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Authorization-Lifetime');
avp(T, Data, 'Class') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Class');
avp(T, Data, 'Destination-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Destination-Host');
avp(T, Data, 'Destination-Realm') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Destination-Realm');
avp(T, Data, 'Disconnect-Cause') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Disconnect-Cause');
avp(T, Data, 'E2E-Sequence') ->
    grouped_avp(T, 'E2E-Sequence', Data);
avp(T, Data, 'Error-Message') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Error-Message');
avp(T, Data, 'Error-Reporting-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Error-Reporting-Host');
avp(T, Data, 'Event-Timestamp') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Event-Timestamp');
avp(T, Data, 'Experimental-Result') ->
    grouped_avp(T, 'Experimental-Result', Data);
avp(T, Data, 'Experimental-Result-Code') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Experimental-Result-Code');
avp(T, Data, 'Failed-AVP') ->
    grouped_avp(T, 'Failed-AVP', Data);
avp(T, Data, 'Firmware-Revision') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Firmware-Revision');
avp(T, Data, 'Host-IP-Address') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Host-IP-Address');
avp(T, Data, 'Inband-Security-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Inband-Security-Id');
avp(T, Data, 'Multi-Round-Time-Out') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Multi-Round-Time-Out');
avp(T, Data, 'Origin-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Origin-Host');
avp(T, Data, 'Origin-Realm') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Origin-Realm');
avp(T, Data, 'Origin-State-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Origin-State-Id');
avp(T, Data, 'Product-Name') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Product-Name');
avp(T, Data, 'Proxy-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Proxy-Host');
avp(T, Data, 'Proxy-Info') ->
    grouped_avp(T, 'Proxy-Info', Data);
avp(T, Data, 'Proxy-State') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Proxy-State');
avp(T, Data, 'Re-Auth-Request-Type') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Re-Auth-Request-Type');
avp(T, Data, 'Redirect-Host') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Redirect-Host');
avp(T, Data, 'Redirect-Host-Usage') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Redirect-Host-Usage');
avp(T, Data, 'Redirect-Max-Cache-Time') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Redirect-Max-Cache-Time');
avp(T, Data, 'Result-Code') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Result-Code');
avp(T, Data, 'Route-Record') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Route-Record');
avp(T, Data, 'Session-Binding') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Binding');
avp(T, Data, 'Session-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Session-Id');
avp(T, Data, 'Session-Server-Failover') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Server-Failover');
avp(T, Data, 'Session-Timeout') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Session-Timeout');
avp(T, Data, 'Supported-Vendor-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Supported-Vendor-Id');
avp(T, Data, 'Termination-Cause') ->
    diameter_gen_base_rfc3588:avp(T, Data,
				  'Termination-Cause');
avp(T, Data, 'User-Name') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'User-Name');
avp(T, Data, 'Vendor-Id') ->
    diameter_gen_base_rfc3588:avp(T, Data, 'Vendor-Id');
avp(T, Data, 'Vendor-Specific-Application-Id') ->
    grouped_avp(T, 'Vendor-Specific-Application-Id', Data);
avp(T, Data, 'Digest-AKA-Auts') ->
    rfc4590_digest:avp(T, Data, 'Digest-AKA-Auts');
avp(T, Data, 'Digest-Algorithm') ->
    rfc4590_digest:avp(T, Data, 'Digest-Algorithm');
avp(T, Data, 'Digest-Auth-Param') ->
    rfc4590_digest:avp(T, Data, 'Digest-Auth-Param');
avp(T, Data, 'Digest-CNonce') ->
    rfc4590_digest:avp(T, Data, 'Digest-CNonce');
avp(T, Data, 'Digest-Domain') ->
    rfc4590_digest:avp(T, Data, 'Digest-Domain');
avp(T, Data, 'Digest-Entity-Body-Hash') ->
    rfc4590_digest:avp(T, Data, 'Digest-Entity-Body-Hash');
avp(T, Data, 'Digest-HA1') ->
    rfc4590_digest:avp(T, Data, 'Digest-HA1');
avp(T, Data, 'Digest-Method') ->
    rfc4590_digest:avp(T, Data, 'Digest-Method');
avp(T, Data, 'Digest-Nextnonce') ->
    rfc4590_digest:avp(T, Data, 'Digest-Nextnonce');
avp(T, Data, 'Digest-Nonce') ->
    rfc4590_digest:avp(T, Data, 'Digest-Nonce');
avp(T, Data, 'Digest-Nonce-Count') ->
    rfc4590_digest:avp(T, Data, 'Digest-Nonce-Count');
avp(T, Data, 'Digest-Opaque') ->
    rfc4590_digest:avp(T, Data, 'Digest-Opaque');
avp(T, Data, 'Digest-Qop') ->
    rfc4590_digest:avp(T, Data, 'Digest-Qop');
avp(T, Data, 'Digest-Realm') ->
    rfc4590_digest:avp(T, Data, 'Digest-Realm');
avp(T, Data, 'Digest-Response') ->
    rfc4590_digest:avp(T, Data, 'Digest-Response');
avp(T, Data, 'Digest-Response-Auth') ->
    rfc4590_digest:avp(T, Data, 'Digest-Response-Auth');
avp(T, Data, 'Digest-Stale') ->
    rfc4590_digest:avp(T, Data, 'Digest-Stale');
avp(T, Data, 'Digest-URI') ->
    rfc4590_digest:avp(T, Data, 'Digest-URI');
avp(T, Data, 'Digest-Username') ->
    rfc4590_digest:avp(T, Data, 'Digest-Username');
avp(T, Data, 'SIP-AOR') ->
    rfc4590_digest:avp(T, Data, 'SIP-AOR');
avp(_, _, _) -> erlang:error(badarg).

enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 4>>) ->
    4;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       4) ->
    <<0, 0, 0, 4>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 5>>) ->
    5;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       5) ->
    <<0, 0, 0, 5>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 6>>) ->
    6;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       6) ->
    <<0, 0, 0, 6>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 7>>) ->
    7;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       7) ->
    <<0, 0, 0, 7>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 8>>) ->
    8;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       8) ->
    <<0, 0, 0, 8>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 9>>) ->
    9;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       9) ->
    <<0, 0, 0, 9>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 10>>) ->
    10;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       10) ->
    <<0, 0, 0, 10>>;
enumerated_avp(decode, 'SIP-Server-Assignment-Type',
	       <<0, 0, 0, 11>>) ->
    11;
enumerated_avp(encode, 'SIP-Server-Assignment-Type',
	       11) ->
    <<0, 0, 0, 11>>;
enumerated_avp(decode, 'SIP-Authentication-Scheme',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'SIP-Authentication-Scheme',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'SIP-Reason-Code',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'SIP-Reason-Code', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'SIP-Reason-Code',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'SIP-Reason-Code', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'SIP-Reason-Code',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'SIP-Reason-Code', 2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode, 'SIP-Reason-Code',
	       <<0, 0, 0, 3>>) ->
    3;
enumerated_avp(encode, 'SIP-Reason-Code', 3) ->
    <<0, 0, 0, 3>>;
enumerated_avp(decode, 'SIP-User-Authorization-Type',
	       <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode, 'SIP-User-Authorization-Type',
	       0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode, 'SIP-User-Authorization-Type',
	       <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode, 'SIP-User-Authorization-Type',
	       1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(decode, 'SIP-User-Authorization-Type',
	       <<0, 0, 0, 2>>) ->
    2;
enumerated_avp(encode, 'SIP-User-Authorization-Type',
	       2) ->
    <<0, 0, 0, 2>>;
enumerated_avp(decode,
	       'SIP-User-Data-Already-Available', <<0, 0, 0, 0>>) ->
    0;
enumerated_avp(encode,
	       'SIP-User-Data-Already-Available', 0) ->
    <<0, 0, 0, 0>>;
enumerated_avp(decode,
	       'SIP-User-Data-Already-Available', <<0, 0, 0, 1>>) ->
    1;
enumerated_avp(encode,
	       'SIP-User-Data-Already-Available', 1) ->
    <<0, 0, 0, 1>>;
enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('SIP-Accounting-Information') ->
    empty_group('SIP-Accounting-Information');
empty_value('SIP-Server-Capabilities') ->
    empty_group('SIP-Server-Capabilities');
empty_value('SIP-Auth-Data-Item') ->
    empty_group('SIP-Auth-Data-Item');
empty_value('SIP-Authenticate') ->
    empty_group('SIP-Authenticate');
empty_value('SIP-Authorization') ->
    empty_group('SIP-Authorization');
empty_value('SIP-Authentication-Info') ->
    empty_group('SIP-Authentication-Info');
empty_value('SIP-Deregistration-Reason') ->
    empty_group('SIP-Deregistration-Reason');
empty_value('SIP-User-Data') ->
    empty_group('SIP-User-Data');
empty_value('Proxy-Info') -> empty_group('Proxy-Info');
empty_value('Failed-AVP') -> empty_group('Failed-AVP');
empty_value('Experimental-Result') ->
    empty_group('Experimental-Result');
empty_value('Vendor-Specific-Application-Id') ->
    empty_group('Vendor-Specific-Application-Id');
empty_value('E2E-Sequence') ->
    empty_group('E2E-Sequence');
empty_value('SIP-Server-Assignment-Type') ->
    <<0, 0, 0, 0>>;
empty_value('SIP-Authentication-Scheme') ->
    <<0, 0, 0, 0>>;
empty_value('SIP-Reason-Code') -> <<0, 0, 0, 0>>;
empty_value('SIP-User-Authorization-Type') ->
    <<0, 0, 0, 0>>;
empty_value('SIP-User-Data-Already-Available') ->
    <<0, 0, 0, 0>>;
empty_value('Disconnect-Cause') -> <<0, 0, 0, 0>>;
empty_value('Redirect-Host-Usage') -> <<0, 0, 0, 0>>;
empty_value('Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Auth-Session-State') -> <<0, 0, 0, 0>>;
empty_value('Re-Auth-Request-Type') -> <<0, 0, 0, 0>>;
empty_value('Termination-Cause') -> <<0, 0, 0, 0>>;
empty_value('Session-Server-Failover') ->
    <<0, 0, 0, 0>>;
empty_value('Accounting-Record-Type') -> <<0, 0, 0, 0>>;
empty_value('Accounting-Realtime-Required') ->
    <<0, 0, 0, 0>>;
empty_value(Name) -> empty(Name).

dict() ->
    [1,
     {avp_types,
      [{"SIP-Accounting-Information", 368, "Grouped", "M"},
       {"SIP-Accounting-Server-URI", 369, "DiameterURI", "M"},
       {"SIP-Auth-Data-Item", 376, "Grouped", "M"},
       {"SIP-Authenticate", 379, "Grouped", "M"},
       {"SIP-Authentication-Info", 381, "Grouped", "M"},
       {"SIP-Authentication-Scheme", 377, "Enumerated", "M"},
       {"SIP-Authorization", 380, "Grouped", "M"},
       {"SIP-Credit-Control-Server-URI", 370, "DiameterURI",
	"M"},
       {"SIP-Deregistration-Reason", 383, "Grouped", "M"},
       {"SIP-Item-Number", 378, "Unsigned32", "M"},
       {"SIP-Mandatory-Capability", 373, "Unsigned32", "M"},
       {"SIP-Method", 393, "UTF8String", "M"},
       {"SIP-Number-Auth-Items", 382, "Unsigned32", "M"},
       {"SIP-Optional-Capability", 374, "Unsigned32", "M"},
       {"SIP-Reason-Code", 384, "Enumerated", "M"},
       {"SIP-Reason-Info", 385, "UTF8String", "M"},
       {"SIP-Server-Assignment-Type", 375, "Enumerated", "M"},
       {"SIP-Server-Capabilities", 372, "Grouped", "M"},
       {"SIP-Server-URI", 371, "UTF8String", "M"},
       {"SIP-Supported-User-Data-Type", 388, "UTF8String",
	"M"},
       {"SIP-User-Authorization-Type", 387, "Enumerated", "M"},
       {"SIP-User-Data", 389, "Grouped", "M"},
       {"SIP-User-Data-Already-Available", 392, "Enumerated",
	"M"},
       {"SIP-User-Data-Contents", 391, "OctetString", "M"},
       {"SIP-User-Data-Type", 390, "UTF8String", "M"},
       {"SIP-Visited-Network-Id", 386, "UTF8String", "M"}]},
     {avp_vendor_id, []}, {codecs, []},
     {command_codes,
      [{286, "MAR", "MAA"}, {287, "RTR", "RTA"},
       {288, "PPR", "PPA"}, {283, "UAR", "UAA"},
       {284, "SAR", "SAA"}, {285, "LIR", "LIA"}]},
     {custom_types, []},
     {define,
      [{"Result-Code",
	[{"FIRST_REGISTRATION", 2003},
	 {"SUBSEQUENT_REGISTRATION", 2004},
	 {"UNREGISTERED_SERVICE", 2005},
	 {"SUCCESS_SERVER_NAME_NOT_STORED", 2006},
	 {"SERVER_SELECTION", 2007},
	 {"SUCCESS_AUTH_SENT_SERVER_NOT_STORED", 2008},
	 {"USER_NAME_REQUIRED", 4013}, {"USER_UNKNOWN", 5032},
	 {"IDENTITIES_DONT_MATCH", 5033},
	 {"IDENTITY_NOT_REGISTERED", 5034},
	 {"ROAMING_NOT_ALLOWED", 5035},
	 {"IDENTITY_ALREADY_REGISTERED", 5036},
	 {"AUTH_SCHEME_NOT_SUPPORTED", 5037},
	 {"IN_ASSIGNMENT_TYPE", 5038}, {"TOO_MUCH_DATA", 5039},
	 {"NOT_SUPPORTED_USER_DATA", 5040}]}]},
     {enum,
      [{"SIP-Server-Assignment-Type",
	[{"NO_ASSIGNMENT", 0}, {"REGISTRATION", 1},
	 {"RE_REGISTRATION", 2}, {"UNREGISTERED_USER", 3},
	 {"TIMEOUT_DEREGISTRATION", 4},
	 {"USER_DEREGISTRATION", 5},
	 {"TIMEOUT_DEREGISTRATION_STORE", 6},
	 {"USER_DEREGISTRATION_STORE", 7},
	 {"ADMINISTRATIVE_DEREGISTRATION", 8},
	 {"AUTHENTICATION_FAILURE", 9},
	 {"AUTHENTICATION_TIMEOUT", 10},
	 {"DEREGISTRATION_TOO_MUCH_DATA", 11}]},
       {"SIP-Authentication-Scheme", [{"DIGEST", 0}]},
       {"SIP-Reason-Code",
	[{"PERMANENT_TERMINATION", 0},
	 {"NEW_SIP_SERVER_ASSIGNED", 1},
	 {"SIP_SERVER_CHANGE", 2}, {"REMOVE_SIP_SERVER", 3}]},
       {"SIP-User-Authorization-Type",
	[{"REGISTRATION", 0}, {"DEREGISTRATION", 1},
	 {"REGISTRATION_AND_CAPABILITIES", 2}]},
       {"SIP-User-Data-Already-Available",
	[{"USER_DATA_NOT_AVAILABLE", 0},
	 {"USER_DATA_ALREADY_AVAILABLE", 1}]}]},
     {grouped,
      [{"SIP-Accounting-Information", 368, [],
	[{'*', ["SIP-Accounting-Server-URI"]},
	 {'*', ["SIP-Credit-Control-Server-URI"]},
	 {'*', ["AVP"]}]},
       {"SIP-Server-Capabilities", 372, [],
	[{'*', ["SIP-Mandatory-Capability"]},
	 {'*', ["SIP-Optional-Capability"]},
	 {'*', ["SIP-Server-URI"]}, {'*', ["AVP"]}]},
       {"SIP-Auth-Data-Item", 376, [],
	[{"SIP-Authentication-Scheme"}, ["SIP-Item-Number"],
	 ["SIP-Authenticate"], ["SIP-Authorization"],
	 ["SIP-Authentication-Info"], {'*', ["AVP"]}]},
       {"SIP-Authenticate", 379, [],
	[{"Digest-Realm"}, {"Digest-Nonce"}, ["Digest-Domain"],
	 ["Digest-Opaque"], ["Digest-Stale"],
	 ["Digest-Algorithm"], ["Digest-Qop"], ["Digest-HA1"],
	 {'*', ["Digest-Auth-Param"]}, {'*', ["AVP"]}]},
       {"SIP-Authorization", 380, [],
	[{"Digest-Username"}, {"Digest-Realm"},
	 {"Digest-Nonce"}, {"Digest-URI"}, {"Digest-Response"},
	 ["Digest-Algorithm"], ["Digest-CNonce"],
	 ["Digest-Opaque"], ["Digest-Qop"],
	 ["Digest-Nonce-Count"], ["Digest-Method"],
	 ["Digest-Entity-Body-Hash"],
	 {'*', ["Digest-Auth-Param"]}, {'*', ["AVP"]}]},
       {"SIP-Authentication-Info", 381, [],
	[["Digest-Nextnonce"], ["Digest-Qop"],
	 ["Digest-Response-Auth"], ["Digest-CNonce"],
	 ["Digest-Nonce-Count"], {'*', ["AVP"]}]},
       {"SIP-Deregistration-Reason", 383, [],
	[{"SIP-Reason-Code"}, ["SIP-Reason-Info"],
	 {'*', ["AVP"]}]},
       {"SIP-User-Data", 389, [],
	[{"SIP-User-Data-Type"}, {"SIP-User-Data-Contents"},
	 {'*', ["AVP"]}]}]},
     {id, 6},
     {import_avps,
      [{diameter_gen_base_rfc3588,
	[{"Accounting-Realtime-Required", 483, "Enumerated",
	  "M"},
	 {"Accounting-Record-Number", 485, "Unsigned32", "M"},
	 {"Accounting-Record-Type", 480, "Enumerated", "M"},
	 {"Accounting-Sub-Session-Id", 287, "Unsigned64", "M"},
	 {"Acct-Application-Id", 259, "Unsigned32", "M"},
	 {"Acct-Interim-Interval", 85, "Unsigned32", "M"},
	 {"Acct-Multi-Session-Id", 50, "UTF8String", "M"},
	 {"Acct-Session-Id", 44, "OctetString", "M"},
	 {"Auth-Application-Id", 258, "Unsigned32", "M"},
	 {"Auth-Grace-Period", 276, "Unsigned32", "M"},
	 {"Auth-Request-Type", 274, "Enumerated", "M"},
	 {"Auth-Session-State", 277, "Enumerated", "M"},
	 {"Authorization-Lifetime", 291, "Unsigned32", "M"},
	 {"Class", 25, "OctetString", "M"},
	 {"Destination-Host", 293, "DiameterIdentity", "M"},
	 {"Destination-Realm", 283, "DiameterIdentity", "M"},
	 {"Disconnect-Cause", 273, "Enumerated", "M"},
	 {"E2E-Sequence", 300, "Grouped", "M"},
	 {"Error-Message", 281, "UTF8String", []},
	 {"Error-Reporting-Host", 294, "DiameterIdentity", []},
	 {"Event-Timestamp", 55, "Time", "M"},
	 {"Experimental-Result", 297, "Grouped", "M"},
	 {"Experimental-Result-Code", 298, "Unsigned32", "M"},
	 {"Failed-AVP", 279, "Grouped", "M"},
	 {"Firmware-Revision", 267, "Unsigned32", []},
	 {"Host-IP-Address", 257, "Address", "M"},
	 {"Inband-Security-Id", 299, "Unsigned32", "M"},
	 {"Multi-Round-Time-Out", 272, "Unsigned32", "M"},
	 {"Origin-Host", 264, "DiameterIdentity", "M"},
	 {"Origin-Realm", 296, "DiameterIdentity", "M"},
	 {"Origin-State-Id", 278, "Unsigned32", "M"},
	 {"Product-Name", 269, "UTF8String", []},
	 {"Proxy-Host", 280, "DiameterIdentity", "M"},
	 {"Proxy-Info", 284, "Grouped", "M"},
	 {"Proxy-State", 33, "OctetString", "M"},
	 {"Re-Auth-Request-Type", 285, "Enumerated", "M"},
	 {"Redirect-Host", 292, "DiameterURI", "M"},
	 {"Redirect-Host-Usage", 261, "Enumerated", "M"},
	 {"Redirect-Max-Cache-Time", 262, "Unsigned32", "M"},
	 {"Result-Code", 268, "Unsigned32", "M"},
	 {"Route-Record", 282, "DiameterIdentity", "M"},
	 {"Session-Binding", 270, "Unsigned32", "M"},
	 {"Session-Id", 263, "UTF8String", "M"},
	 {"Session-Server-Failover", 271, "Enumerated", "M"},
	 {"Session-Timeout", 27, "Unsigned32", "M"},
	 {"Supported-Vendor-Id", 265, "Unsigned32", "M"},
	 {"Termination-Cause", 295, "Enumerated", "M"},
	 {"User-Name", 1, "UTF8String", "M"},
	 {"Vendor-Id", 266, "Unsigned32", "M"},
	 {"Vendor-Specific-Application-Id", 260, "Grouped",
	  "M"}]},
       {rfc4590_digest,
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
	 {"SIP-AOR", 122, "OctetString", []}]}]},
     {import_enums,
      [{diameter_gen_base_rfc3588,
	[{"Disconnect-Cause",
	  [{"REBOOTING", 0}, {"BUSY", 1},
	   {"DO_NOT_WANT_TO_TALK_TO_YOU", 2}]},
	 {"Redirect-Host-Usage",
	  [{"DONT_CACHE", 0}, {"ALL_SESSION", 1},
	   {"ALL_REALM", 2}, {"REALM_AND_APPLICATION", 3},
	   {"ALL_APPLICATION", 4}, {"ALL_HOST", 5},
	   {"ALL_USER", 6}]},
	 {"Auth-Request-Type",
	  [{"AUTHENTICATE_ONLY", 1}, {"AUTHORIZE_ONLY", 2},
	   {"AUTHORIZE_AUTHENTICATE", 3}]},
	 {"Auth-Session-State",
	  [{"STATE_MAINTAINED", 0}, {"NO_STATE_MAINTAINED", 1}]},
	 {"Re-Auth-Request-Type",
	  [{"AUTHORIZE_ONLY", 0}, {"AUTHORIZE_AUTHENTICATE", 1}]},
	 {"Termination-Cause",
	  [{"LOGOUT", 1}, {"SERVICE_NOT_PROVIDED", 2},
	   {"BAD_ANSWER", 3}, {"ADMINISTRATIVE", 4},
	   {"LINK_BROKEN", 5}, {"AUTH_EXPIRED", 6},
	   {"USER_MOVED", 7}, {"SESSION_TIMEOUT", 8}]},
	 {"Session-Server-Failover",
	  [{"REFUSE_SERVICE", 0}, {"TRY_AGAIN", 1},
	   {"ALLOW_SERVICE", 2}, {"TRY_AGAIN_ALLOW_SERVICE", 3}]},
	 {"Accounting-Record-Type",
	  [{"EVENT_RECORD", 1}, {"START_RECORD", 2},
	   {"INTERIM_RECORD", 3}, {"STOP_RECORD", 4}]},
	 {"Accounting-Realtime-Required",
	  [{"DELIVER_AND_GRANT", 1}, {"GRANT_AND_STORE", 2},
	   {"GRANT_AND_LOSE", 3}]}]}]},
     {import_groups,
      [{diameter_gen_base_rfc3588,
	[{"Proxy-Info", 284, [],
	  [{"Proxy-Host"}, {"Proxy-State"}, {'*', ["AVP"]}]},
	 {"Failed-AVP", 279, [], [{'*', {"AVP"}}]},
	 {"Experimental-Result", 297, [],
	  [{"Vendor-Id"}, {"Experimental-Result-Code"}]},
	 {"Vendor-Specific-Application-Id", 260, [],
	  [{'*', {"Vendor-Id"}}, ["Auth-Application-Id"],
	   ["Acct-Application-Id"]]},
	 {"E2E-Sequence", 300, [], [{{2, '*'}, {"AVP"}}]}]}]},
     {inherits,
      [{"rfc4590_digest", []},
       {"diameter_gen_base_rfc3588", []}]},
     {messages,
      [{"UAR", 283, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Session-State"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Destination-Realm"}, {"SIP-AOR"},
	 ["Destination-Host"], ["User-Name"],
	 ["SIP-Visited-Network-Id"],
	 ["SIP-User-Authorization-Type"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"UAA", 283, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Session-State"}, {"Result-Code"},
	 {"Origin-Host"}, {"Origin-Realm"}, ["SIP-Server-URI"],
	 ["SIP-Server-Capabilities"], ["Authorization-Lifetime"],
	 ["Auth-Grace-Period"], ["Redirect-Host"],
	 ["Redirect-Host-Usage"], ["Redirect-Max-Cache-Time"],
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]},
	 {'*', ["AVP"]}]},
       {"SAR", 284, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Session-State"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Destination-Realm"},
	 {"SIP-Server-Assignment-Type"},
	 {"SIP-User-Data-Already-Available"},
	 ["Destination-Host"], ["User-Name"], ["SIP-Server-URI"],
	 {'*', ["SIP-Supported-User-Data-Type"]},
	 {'*', ["SIP-AOR"]}, {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"SAA", 284, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Result-Code"}, {"Auth-Session-State"},
	 {"Origin-Host"}, {"Origin-Realm"},
	 {'*', ["SIP-User-Data"]},
	 ["SIP-Accounting-Information"],
	 {'*', ["SIP-Supported-User-Data-Type"]}, ["User-Name"],
	 ["Auth-Grace-Period"], ["Authorization-Lifetime"],
	 ["Redirect-Host"], ["Redirect-Host-Usage"],
	 ["Redirect-Max-Cache-Time"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"LIR", 285, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Session-State"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Destination-Realm"}, {"SIP-AOR"},
	 ["Destination-Host"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"LIA", 285, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Result-Code"}, {"Auth-Session-State"},
	 {"Origin-Host"}, {"Origin-Realm"}, ["SIP-Server-URI"],
	 ["SIP-Server-Capabilities"], ["Auth-Grace-Period"],
	 ["Authorization-Lifetime"], ["Redirect-Host"],
	 ["Redirect-Host-Usage"], ["Redirect-Max-Cache-Time"],
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]},
	 {'*', ["AVP"]}]},
       {"MAR", 286, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Session-State"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Destination-Realm"}, {"SIP-AOR"},
	 {"SIP-Method"}, ["Destination-Host"], ["User-Name"],
	 ["SIP-Server-URI"], ["SIP-Number-Auth-Items"],
	 ["SIP-Auth-Data-Item"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"MAA", 286, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Result-Code"}, {"Auth-Session-State"},
	 {"Origin-Host"}, {"Origin-Realm"}, ["User-Name"],
	 ["SIP-AOR"], ["SIP-Number-Auth-Items"],
	 {'*', ["SIP-Auth-Data-Item"]},
	 ["Authorization-Lifetime"], ["Auth-Grace-Period"],
	 ["Redirect-Host"], ["Redirect-Host-Usage"],
	 ["Redirect-Max-Cache-Time"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"RTR", 287, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Session-State"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Destination-Host"},
	 {"SIP-Deregistration-Reason"}, ["Destination-Realm"],
	 ["User-Name"], {'*', ["SIP-AOR"]},
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]},
	 {'*', ["AVP"]}]},
       {"RTA", 287, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Result-Code"}, {"Auth-Session-State"},
	 {"Origin-Host"}, {"Origin-Realm"},
	 ["Authorization-Lifetime"], ["Auth-Grace-Period"],
	 ["Redirect-Host"], ["Redirect-Host-Usage"],
	 ["Redirect-Max-Cache-Time"], {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"PPR", 288, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Session-State"}, {"Origin-Host"},
	 {"Origin-Realm"}, {"Destination-Realm"}, {"User-Name"},
	 {'*', ["SIP-User-Data"]},
	 ["SIP-Accounting-Information"], ["Destination-Host"],
	 ["Authorization-Lifetime"], ["Auth-Grace-Period"],
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]},
	 {'*', ["AVP"]}]},
       {"PPA", 288, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Result-Code"}, {"Auth-Session-State"},
	 {"Origin-Host"}, {"Origin-Realm"}, ["Redirect-Host"],
	 ["Redirect-Host-Usage"], ["Redirect-Max-Cache-Time"],
	 {'*', ["Proxy-Info"]}, {'*', ["Route-Record"]},
	 {'*', ["AVP"]}]}]}].


