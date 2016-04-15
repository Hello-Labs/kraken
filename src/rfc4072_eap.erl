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

-module(rfc4072_eap).

-compile({parse_transform, diameter_exprecs}).

-compile(nowarn_unused_function).

-export_records(['DER', 'DEA', 'Proxy-Info',
		 'Failed-AVP', 'Experimental-Result',
		 'Vendor-Specific-Application-Id', 'E2E-Sequence',
		 'CHAP-Auth', 'Tunneling']).

-record('DER',
	{'Session-Id', 'Auth-Application-Id', 'Origin-Host',
	 'Origin-Realm', 'Destination-Realm',
	 'Auth-Request-Type', 'EAP-Payload',
	 'Destination-Host' = [], 'NAS-Identifier' = [],
	 'NAS-IP-Address' = [], 'NAS-IPv6-Address' = [],
	 'NAS-Port' = [], 'NAS-Port-Id' = [],
	 'NAS-Port-Type' = [], 'Origin-State-Id' = [],
	 'Port-Limit' = [], 'User-Name' = [],
	 'EAP-Key-Name' = [], 'Service-Type' = [], 'State' = [],
	 'Authorization-Lifetime' = [], 'Auth-Grace-Period' = [],
	 'Auth-Session-State' = [], 'Callback-Number' = [],
	 'Called-Station-Id' = [], 'Calling-Station-Id' = [],
	 'Originating-Line-Info' = [], 'Connect-Info' = [],
	 'Framed-Compression' = [], 'Framed-Interface-Id' = [],
	 'Framed-IP-Address' = [], 'Framed-IPv6-Prefix' = [],
	 'Framed-IP-Netmask' = [], 'Framed-MTU' = [],
	 'Framed-Protocol' = [], 'Tunneling' = [],
	 'Proxy-Info' = [], 'Route-Record' = [], 'AVP' = []}).

-record('DEA',
	{'Session-Id', 'Auth-Application-Id',
	 'Auth-Request-Type', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'User-Name' = [], 'EAP-Payload' = [],
	 'EAP-Reissued-Payload' = [],
	 'EAP-Master-Session-Key' = [], 'EAP-Key-Name' = [],
	 'Multi-Round-Time-Out' = [],
	 'Accounting-EAP-Auth-Method' = [], 'Service-Type' = [],
	 'Class' = [], 'Configuration-Token' = [],
	 'Acct-Interim-Interval' = [], 'Error-Message' = [],
	 'Error-Reporting-Host' = [], 'Failed-AVP' = [],
	 'Idle-Timeout' = [], 'Authorization-Lifetime' = [],
	 'Auth-Grace-Period' = [], 'Auth-Session-State' = [],
	 'Re-Auth-Request-Type' = [], 'Session-Timeout' = [],
	 'State' = [], 'Reply-Message' = [],
	 'Origin-State-Id' = [], 'Filter-Id' = [],
	 'Port-Limit' = [], 'Callback-Id' = [],
	 'Callback-Number' = [], 'Framed-AppleTalk-Link' = [],
	 'Framed-AppleTalk-Network' = [],
	 'Framed-AppleTalk-Zone' = [], 'Framed-Compression' = [],
	 'Framed-Interface-Id' = [], 'Framed-IP-Address' = [],
	 'Framed-IPv6-Prefix' = [], 'Framed-IPv6-Pool' = [],
	 'Framed-IPv6-Route' = [], 'Framed-IP-Netmask' = [],
	 'Framed-Route' = [], 'Framed-Pool' = [],
	 'Framed-IPX-Network' = [], 'Framed-MTU' = [],
	 'Framed-Protocol' = [], 'Framed-Routing' = [],
	 'NAS-Filter-Rule' = [], 'QoS-Filter-Rule' = [],
	 'Tunneling' = [], 'Redirect-Host' = [],
	 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
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

-record('CHAP-Auth',
	{'CHAP-Algorithm', 'CHAP-Ident', 'CHAP-Response' = [],
	 'AVP' = []}).

-record('Tunneling',
	{'Tunnel-Type', 'Tunnel-Medium-Type',
	 'Tunnel-Client-Endpoint', 'Tunnel-Server-Endpoint',
	 'Tunnel-Preference' = [], 'Tunnel-Client-Auth-Id' = [],
	 'Tunnel-Server-Auth-Id' = [],
	 'Tunnel-Assignment-Id' = [], 'Tunnel-Password' = [],
	 'Tunnel-Private-Group-Id' = []}).

-export([name/0, id/0, vendor_id/0, vendor_name/0,
	 decode_avps/2, encode_avps/2, msg_name/2, msg_header/1,
	 rec2msg/1, msg2rec/1, name2rec/1, avp_name/2,
	 avp_arity/2, avp_header/1, avp/3, grouped_avp/3,
	 enumerated_avp/3, empty_value/1, dict/0]).

-include_lib("diameter/include/diameter.hrl").

-include_lib("diameter/include/diameter_gen.hrl").

name() -> rfc4072_eap.

id() -> 5.

vendor_id() -> erlang:error(undefined).

vendor_name() -> erlang:error(undefined).

msg_name(268, true) -> 'DER';
msg_name(268, false) -> 'DEA';
msg_name(_, _) -> ''.

msg_header('DER') -> {268, 192, 5};
msg_header('DEA') -> {268, 64, 5};
msg_header(_) -> erlang:error(badarg).

rec2msg('DER') -> 'DER';
rec2msg('DEA') -> 'DEA';
rec2msg(_) -> erlang:error(badarg).

msg2rec('DER') -> 'DER';
msg2rec('DEA') -> 'DEA';
msg2rec(_) -> erlang:error(badarg).

name2rec('Proxy-Info') -> 'Proxy-Info';
name2rec('Failed-AVP') -> 'Failed-AVP';
name2rec('Experimental-Result') ->
    'Experimental-Result';
name2rec('Vendor-Specific-Application-Id') ->
    'Vendor-Specific-Application-Id';
name2rec('E2E-Sequence') -> 'E2E-Sequence';
name2rec('CHAP-Auth') -> 'CHAP-Auth';
name2rec('Tunneling') -> 'Tunneling';
name2rec(T) -> msg2rec(T).

avp_name(465, undefined) ->
    {'Accounting-EAP-Auth-Method', 'Unsigned64'};
avp_name(102, undefined) ->
    {'EAP-Key-Name', 'OctetString'};
avp_name(464, undefined) ->
    {'EAP-Master-Session-Key', 'OctetString'};
avp_name(462, undefined) ->
    {'EAP-Payload', 'OctetString'};
avp_name(463, undefined) ->
    {'EAP-Reissued-Payload', 'OctetString'};
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
avp_name(84, undefined) ->
    {'ARAP-Challenge-Response', 'OctetString'};
avp_name(71, undefined) ->
    {'ARAP-Features', 'OctetString'};
avp_name(70, undefined) ->
    {'ARAP-Password', 'OctetString'};
avp_name(73, undefined) ->
    {'ARAP-Security', 'Unsigned32'};
avp_name(74, undefined) ->
    {'ARAP-Security-Data', 'OctetString'};
avp_name(72, undefined) ->
    {'ARAP-Zone-Access', 'Enumerated'};
avp_name(406, undefined) ->
    {'Accounting-Auth-Method', 'Enumerated'};
avp_name(363, undefined) ->
    {'Accounting-Input-Octets', 'Unsigned64'};
avp_name(365, undefined) ->
    {'Accounting-Input-Packets', 'Unsigned64'};
avp_name(364, undefined) ->
    {'Accounting-Output-Octets', 'Unsigned64'};
avp_name(366, undefined) ->
    {'Accounting-Output-Packets', 'Unsigned64'};
avp_name(45, undefined) ->
    {'Acct-Authentic', 'Enumerated'};
avp_name(41, undefined) ->
    {'Acct-Delay-Time', 'Unsigned32'};
avp_name(51, undefined) ->
    {'Acct-Link-Count', 'Unsigned32'};
avp_name(46, undefined) ->
    {'Acct-Session-Time', 'Unsigned32'};
avp_name(68, undefined) ->
    {'Acct-Tunnel-Connection', 'OctetString'};
avp_name(86, undefined) ->
    {'Acct-Tunnel-Packets-Lost', 'Unsigned32'};
avp_name(403, undefined) ->
    {'CHAP-Algorithm', 'Enumerated'};
avp_name(402, undefined) -> {'CHAP-Auth', 'Grouped'};
avp_name(60, undefined) ->
    {'CHAP-Challenge', 'OctetString'};
avp_name(404, undefined) ->
    {'CHAP-Ident', 'OctetString'};
avp_name(405, undefined) ->
    {'CHAP-Response', 'OctetString'};
avp_name(20, undefined) ->
    {'Callback-Id', 'UTF8String'};
avp_name(19, undefined) ->
    {'Callback-Number', 'UTF8String'};
avp_name(30, undefined) ->
    {'Called-Station-Id', 'UTF8String'};
avp_name(31, undefined) ->
    {'Calling-Station-Id', 'UTF8String'};
avp_name(78, undefined) ->
    {'Configuration-Token', 'OctetString'};
avp_name(77, undefined) ->
    {'Connect-Info', 'UTF8String'};
avp_name(11, undefined) -> {'Filter-Id', 'UTF8String'};
avp_name(37, undefined) ->
    {'Framed-AppleTalk-Link', 'Unsigned32'};
avp_name(38, undefined) ->
    {'Framed-AppleTalk-Network', 'Unsigned32'};
avp_name(39, undefined) ->
    {'Framed-AppleTalk-Zone', 'OctetString'};
avp_name(13, undefined) ->
    {'Framed-Compression', 'Enumerated'};
avp_name(8, undefined) ->
    {'Framed-IP-Address', 'OctetString'};
avp_name(9, undefined) ->
    {'Framed-IP-Netmask', 'OctetString'};
avp_name(23, undefined) ->
    {'Framed-IPX-Network', 'UTF8String'};
avp_name(100, undefined) ->
    {'Framed-IPv6-Pool', 'OctetString'};
avp_name(97, undefined) ->
    {'Framed-IPv6-Prefix', 'OctetString'};
avp_name(99, undefined) ->
    {'Framed-IPv6-Route', 'UTF8String'};
avp_name(96, undefined) ->
    {'Framed-Interface-Id', 'Unsigned64'};
avp_name(12, undefined) -> {'Framed-MTU', 'Unsigned32'};
avp_name(88, undefined) ->
    {'Framed-Pool', 'OctetString'};
avp_name(7, undefined) ->
    {'Framed-Protocol', 'Enumerated'};
avp_name(22, undefined) ->
    {'Framed-Route', 'UTF8String'};
avp_name(10, undefined) ->
    {'Framed-Routing', 'Enumerated'};
avp_name(28, undefined) ->
    {'Idle-Timeout', 'Unsigned32'};
avp_name(14, undefined) ->
    {'Login-IP-Host', 'OctetString'};
avp_name(98, undefined) ->
    {'Login-IPv6-Host', 'OctetString'};
avp_name(36, undefined) ->
    {'Login-LAT-Group', 'OctetString'};
avp_name(35, undefined) ->
    {'Login-LAT-Node', 'OctetString'};
avp_name(63, undefined) ->
    {'Login-LAT-Port', 'OctetString'};
avp_name(34, undefined) ->
    {'Login-LAT-Service', 'OctetString'};
avp_name(15, undefined) ->
    {'Login-Service', 'Enumerated'};
avp_name(16, undefined) ->
    {'Login-TCP-Port', 'Unsigned32'};
avp_name(400, undefined) ->
    {'NAS-Filter-Rule', 'IPFilterRule'};
avp_name(4, undefined) ->
    {'NAS-IP-Address', 'OctetString'};
avp_name(95, undefined) ->
    {'NAS-IPv6-Address', 'OctetString'};
avp_name(32, undefined) ->
    {'NAS-Identifier', 'UTF8String'};
avp_name(5, undefined) -> {'NAS-Port', 'Unsigned32'};
avp_name(87, undefined) ->
    {'NAS-Port-Id', 'UTF8String'};
avp_name(61, undefined) ->
    {'NAS-Port-Type', 'Enumerated'};
avp_name(408, undefined) ->
    {'Origin-AAA-Protocol', 'Enumerated'};
avp_name(94, undefined) ->
    {'Originating-Line-Info', 'OctetString'};
avp_name(75, undefined) ->
    {'Password-Retry', 'Unsigned32'};
avp_name(62, undefined) -> {'Port-Limit', 'Unsigned32'};
avp_name(76, undefined) -> {'Prompt', 'Enumerated'};
avp_name(407, undefined) ->
    {'QoS-Filter-Rule', 'QoSFilterRule'};
avp_name(18, undefined) ->
    {'Reply-Message', 'UTF8String'};
avp_name(6, undefined) ->
    {'Service-Type', 'Enumerated'};
avp_name(24, undefined) -> {'State', 'OctetString'};
avp_name(82, undefined) ->
    {'Tunnel-Assignment-Id', 'OctetString'};
avp_name(90, undefined) ->
    {'Tunnel-Client-Auth-Id', 'UTF8String'};
avp_name(66, undefined) ->
    {'Tunnel-Client-Endpoint', 'UTF8String'};
avp_name(65, undefined) ->
    {'Tunnel-Medium-Type', 'Enumerated'};
avp_name(69, undefined) ->
    {'Tunnel-Password', 'OctetString'};
avp_name(83, undefined) ->
    {'Tunnel-Preference', 'Unsigned32'};
avp_name(81, undefined) ->
    {'Tunnel-Private-Group-Id', 'OctetString'};
avp_name(91, undefined) ->
    {'Tunnel-Server-Auth-Id', 'UTF8String'};
avp_name(67, undefined) ->
    {'Tunnel-Server-Endpoint', 'UTF8String'};
avp_name(64, undefined) ->
    {'Tunnel-Type', 'Enumerated'};
avp_name(401, undefined) -> {'Tunneling', 'Grouped'};
avp_name(2, undefined) ->
    {'User-Password', 'OctetString'};
avp_name(_, _) -> 'AVP'.

avp_arity('DER', 'Session-Id') -> 1;
avp_arity('DER', 'Auth-Application-Id') -> 1;
avp_arity('DER', 'Origin-Host') -> 1;
avp_arity('DER', 'Origin-Realm') -> 1;
avp_arity('DER', 'Destination-Realm') -> 1;
avp_arity('DER', 'Auth-Request-Type') -> 1;
avp_arity('DER', 'EAP-Payload') -> 1;
avp_arity('DER', 'Destination-Host') -> {0, 1};
avp_arity('DER', 'NAS-Identifier') -> {0, 1};
avp_arity('DER', 'NAS-IP-Address') -> {0, 1};
avp_arity('DER', 'NAS-IPv6-Address') -> {0, 1};
avp_arity('DER', 'NAS-Port') -> {0, 1};
avp_arity('DER', 'NAS-Port-Id') -> {0, 1};
avp_arity('DER', 'NAS-Port-Type') -> {0, 1};
avp_arity('DER', 'Origin-State-Id') -> {0, 1};
avp_arity('DER', 'Port-Limit') -> {0, 1};
avp_arity('DER', 'User-Name') -> {0, 1};
avp_arity('DER', 'EAP-Key-Name') -> {0, 1};
avp_arity('DER', 'Service-Type') -> {0, 1};
avp_arity('DER', 'State') -> {0, 1};
avp_arity('DER', 'Authorization-Lifetime') -> {0, 1};
avp_arity('DER', 'Auth-Grace-Period') -> {0, 1};
avp_arity('DER', 'Auth-Session-State') -> {0, 1};
avp_arity('DER', 'Callback-Number') -> {0, 1};
avp_arity('DER', 'Called-Station-Id') -> {0, 1};
avp_arity('DER', 'Calling-Station-Id') -> {0, 1};
avp_arity('DER', 'Originating-Line-Info') -> {0, 1};
avp_arity('DER', 'Connect-Info') -> {0, 1};
avp_arity('DER', 'Framed-Compression') -> {0, '*'};
avp_arity('DER', 'Framed-Interface-Id') -> {0, 1};
avp_arity('DER', 'Framed-IP-Address') -> {0, 1};
avp_arity('DER', 'Framed-IPv6-Prefix') -> {0, '*'};
avp_arity('DER', 'Framed-IP-Netmask') -> {0, 1};
avp_arity('DER', 'Framed-MTU') -> {0, 1};
avp_arity('DER', 'Framed-Protocol') -> {0, 1};
avp_arity('DER', 'Tunneling') -> {0, '*'};
avp_arity('DER', 'Proxy-Info') -> {0, '*'};
avp_arity('DER', 'Route-Record') -> {0, '*'};
avp_arity('DER', 'AVP') -> {0, '*'};
avp_arity('DEA', 'Session-Id') -> 1;
avp_arity('DEA', 'Auth-Application-Id') -> 1;
avp_arity('DEA', 'Auth-Request-Type') -> 1;
avp_arity('DEA', 'Result-Code') -> 1;
avp_arity('DEA', 'Origin-Host') -> 1;
avp_arity('DEA', 'Origin-Realm') -> 1;
avp_arity('DEA', 'User-Name') -> {0, 1};
avp_arity('DEA', 'EAP-Payload') -> {0, 1};
avp_arity('DEA', 'EAP-Reissued-Payload') -> {0, 1};
avp_arity('DEA', 'EAP-Master-Session-Key') -> {0, 1};
avp_arity('DEA', 'EAP-Key-Name') -> {0, 1};
avp_arity('DEA', 'Multi-Round-Time-Out') -> {0, 1};
avp_arity('DEA', 'Accounting-EAP-Auth-Method') ->
    {0, 1};
avp_arity('DEA', 'Service-Type') -> {0, 1};
avp_arity('DEA', 'Class') -> {0, '*'};
avp_arity('DEA', 'Configuration-Token') -> {0, '*'};
avp_arity('DEA', 'Acct-Interim-Interval') -> {0, 1};
avp_arity('DEA', 'Error-Message') -> {0, 1};
avp_arity('DEA', 'Error-Reporting-Host') -> {0, 1};
avp_arity('DEA', 'Failed-AVP') -> {0, '*'};
avp_arity('DEA', 'Idle-Timeout') -> {0, 1};
avp_arity('DEA', 'Authorization-Lifetime') -> {0, 1};
avp_arity('DEA', 'Auth-Grace-Period') -> {0, 1};
avp_arity('DEA', 'Auth-Session-State') -> {0, 1};
avp_arity('DEA', 'Re-Auth-Request-Type') -> {0, 1};
avp_arity('DEA', 'Session-Timeout') -> {0, 1};
avp_arity('DEA', 'State') -> {0, 1};
avp_arity('DEA', 'Reply-Message') -> {0, '*'};
avp_arity('DEA', 'Origin-State-Id') -> {0, 1};
avp_arity('DEA', 'Filter-Id') -> {0, '*'};
avp_arity('DEA', 'Port-Limit') -> {0, 1};
avp_arity('DEA', 'Callback-Id') -> {0, 1};
avp_arity('DEA', 'Callback-Number') -> {0, 1};
avp_arity('DEA', 'Framed-AppleTalk-Link') -> {0, 1};
avp_arity('DEA', 'Framed-AppleTalk-Network') ->
    {0, '*'};
avp_arity('DEA', 'Framed-AppleTalk-Zone') -> {0, 1};
avp_arity('DEA', 'Framed-Compression') -> {0, '*'};
avp_arity('DEA', 'Framed-Interface-Id') -> {0, 1};
avp_arity('DEA', 'Framed-IP-Address') -> {0, 1};
avp_arity('DEA', 'Framed-IPv6-Prefix') -> {0, '*'};
avp_arity('DEA', 'Framed-IPv6-Pool') -> {0, 1};
avp_arity('DEA', 'Framed-IPv6-Route') -> {0, '*'};
avp_arity('DEA', 'Framed-IP-Netmask') -> {0, 1};
avp_arity('DEA', 'Framed-Route') -> {0, '*'};
avp_arity('DEA', 'Framed-Pool') -> {0, 1};
avp_arity('DEA', 'Framed-IPX-Network') -> {0, 1};
avp_arity('DEA', 'Framed-MTU') -> {0, 1};
avp_arity('DEA', 'Framed-Protocol') -> {0, 1};
avp_arity('DEA', 'Framed-Routing') -> {0, 1};
avp_arity('DEA', 'NAS-Filter-Rule') -> {0, '*'};
avp_arity('DEA', 'QoS-Filter-Rule') -> {0, '*'};
avp_arity('DEA', 'Tunneling') -> {0, '*'};
avp_arity('DEA', 'Redirect-Host') -> {0, '*'};
avp_arity('DEA', 'Redirect-Host-Usage') -> {0, 1};
avp_arity('DEA', 'Redirect-Max-Cache-Time') -> {0, 1};
avp_arity('DEA', 'Proxy-Info') -> {0, '*'};
avp_arity('DEA', 'AVP') -> {0, '*'};
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
avp_arity('CHAP-Auth', 'CHAP-Algorithm') -> 1;
avp_arity('CHAP-Auth', 'CHAP-Ident') -> 1;
avp_arity('CHAP-Auth', 'CHAP-Response') -> {0, 1};
avp_arity('CHAP-Auth', 'AVP') -> {0, '*'};
avp_arity('Tunneling', 'Tunnel-Type') -> 1;
avp_arity('Tunneling', 'Tunnel-Medium-Type') -> 1;
avp_arity('Tunneling', 'Tunnel-Client-Endpoint') -> 1;
avp_arity('Tunneling', 'Tunnel-Server-Endpoint') -> 1;
avp_arity('Tunneling', 'Tunnel-Preference') -> {0, 1};
avp_arity('Tunneling', 'Tunnel-Client-Auth-Id') ->
    {0, 1};
avp_arity('Tunneling', 'Tunnel-Server-Auth-Id') ->
    {0, 1};
avp_arity('Tunneling', 'Tunnel-Assignment-Id') ->
    {0, 1};
avp_arity('Tunneling', 'Tunnel-Password') -> {0, 1};
avp_arity('Tunneling', 'Tunnel-Private-Group-Id') ->
    {0, 1};
avp_arity(_, _) -> 0.

avp_header('Accounting-EAP-Auth-Method') ->
    {465, 0, undefined};
avp_header('EAP-Key-Name') -> {102, 0, undefined};
avp_header('EAP-Master-Session-Key') ->
    {464, 0, undefined};
avp_header('EAP-Payload') -> {462, 0, undefined};
avp_header('EAP-Reissued-Payload') ->
    {463, 0, undefined};
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
avp_header('ARAP-Challenge-Response') ->
    rfc4005_nas:avp_header('ARAP-Challenge-Response');
avp_header('ARAP-Features') ->
    rfc4005_nas:avp_header('ARAP-Features');
avp_header('ARAP-Password') ->
    rfc4005_nas:avp_header('ARAP-Password');
avp_header('ARAP-Security') ->
    rfc4005_nas:avp_header('ARAP-Security');
avp_header('ARAP-Security-Data') ->
    rfc4005_nas:avp_header('ARAP-Security-Data');
avp_header('ARAP-Zone-Access') ->
    rfc4005_nas:avp_header('ARAP-Zone-Access');
avp_header('Accounting-Auth-Method') ->
    rfc4005_nas:avp_header('Accounting-Auth-Method');
avp_header('Accounting-Input-Octets') ->
    rfc4005_nas:avp_header('Accounting-Input-Octets');
avp_header('Accounting-Input-Packets') ->
    rfc4005_nas:avp_header('Accounting-Input-Packets');
avp_header('Accounting-Output-Octets') ->
    rfc4005_nas:avp_header('Accounting-Output-Octets');
avp_header('Accounting-Output-Packets') ->
    rfc4005_nas:avp_header('Accounting-Output-Packets');
avp_header('Acct-Authentic') ->
    rfc4005_nas:avp_header('Acct-Authentic');
avp_header('Acct-Delay-Time') ->
    rfc4005_nas:avp_header('Acct-Delay-Time');
avp_header('Acct-Link-Count') ->
    rfc4005_nas:avp_header('Acct-Link-Count');
avp_header('Acct-Session-Time') ->
    rfc4005_nas:avp_header('Acct-Session-Time');
avp_header('Acct-Tunnel-Connection') ->
    rfc4005_nas:avp_header('Acct-Tunnel-Connection');
avp_header('Acct-Tunnel-Packets-Lost') ->
    rfc4005_nas:avp_header('Acct-Tunnel-Packets-Lost');
avp_header('CHAP-Algorithm') ->
    rfc4005_nas:avp_header('CHAP-Algorithm');
avp_header('CHAP-Auth') ->
    rfc4005_nas:avp_header('CHAP-Auth');
avp_header('CHAP-Challenge') ->
    rfc4005_nas:avp_header('CHAP-Challenge');
avp_header('CHAP-Ident') ->
    rfc4005_nas:avp_header('CHAP-Ident');
avp_header('CHAP-Response') ->
    rfc4005_nas:avp_header('CHAP-Response');
avp_header('Callback-Id') ->
    rfc4005_nas:avp_header('Callback-Id');
avp_header('Callback-Number') ->
    rfc4005_nas:avp_header('Callback-Number');
avp_header('Called-Station-Id') ->
    rfc4005_nas:avp_header('Called-Station-Id');
avp_header('Calling-Station-Id') ->
    rfc4005_nas:avp_header('Calling-Station-Id');
avp_header('Configuration-Token') ->
    rfc4005_nas:avp_header('Configuration-Token');
avp_header('Connect-Info') ->
    rfc4005_nas:avp_header('Connect-Info');
avp_header('Filter-Id') ->
    rfc4005_nas:avp_header('Filter-Id');
avp_header('Framed-AppleTalk-Link') ->
    rfc4005_nas:avp_header('Framed-AppleTalk-Link');
avp_header('Framed-AppleTalk-Network') ->
    rfc4005_nas:avp_header('Framed-AppleTalk-Network');
avp_header('Framed-AppleTalk-Zone') ->
    rfc4005_nas:avp_header('Framed-AppleTalk-Zone');
avp_header('Framed-Compression') ->
    rfc4005_nas:avp_header('Framed-Compression');
avp_header('Framed-IP-Address') ->
    rfc4005_nas:avp_header('Framed-IP-Address');
avp_header('Framed-IP-Netmask') ->
    rfc4005_nas:avp_header('Framed-IP-Netmask');
avp_header('Framed-IPX-Network') ->
    rfc4005_nas:avp_header('Framed-IPX-Network');
avp_header('Framed-IPv6-Pool') ->
    rfc4005_nas:avp_header('Framed-IPv6-Pool');
avp_header('Framed-IPv6-Prefix') ->
    rfc4005_nas:avp_header('Framed-IPv6-Prefix');
avp_header('Framed-IPv6-Route') ->
    rfc4005_nas:avp_header('Framed-IPv6-Route');
avp_header('Framed-Interface-Id') ->
    rfc4005_nas:avp_header('Framed-Interface-Id');
avp_header('Framed-MTU') ->
    rfc4005_nas:avp_header('Framed-MTU');
avp_header('Framed-Pool') ->
    rfc4005_nas:avp_header('Framed-Pool');
avp_header('Framed-Protocol') ->
    rfc4005_nas:avp_header('Framed-Protocol');
avp_header('Framed-Route') ->
    rfc4005_nas:avp_header('Framed-Route');
avp_header('Framed-Routing') ->
    rfc4005_nas:avp_header('Framed-Routing');
avp_header('Idle-Timeout') ->
    rfc4005_nas:avp_header('Idle-Timeout');
avp_header('Login-IP-Host') ->
    rfc4005_nas:avp_header('Login-IP-Host');
avp_header('Login-IPv6-Host') ->
    rfc4005_nas:avp_header('Login-IPv6-Host');
avp_header('Login-LAT-Group') ->
    rfc4005_nas:avp_header('Login-LAT-Group');
avp_header('Login-LAT-Node') ->
    rfc4005_nas:avp_header('Login-LAT-Node');
avp_header('Login-LAT-Port') ->
    rfc4005_nas:avp_header('Login-LAT-Port');
avp_header('Login-LAT-Service') ->
    rfc4005_nas:avp_header('Login-LAT-Service');
avp_header('Login-Service') ->
    rfc4005_nas:avp_header('Login-Service');
avp_header('Login-TCP-Port') ->
    rfc4005_nas:avp_header('Login-TCP-Port');
avp_header('NAS-Filter-Rule') ->
    rfc4005_nas:avp_header('NAS-Filter-Rule');
avp_header('NAS-IP-Address') ->
    rfc4005_nas:avp_header('NAS-IP-Address');
avp_header('NAS-IPv6-Address') ->
    rfc4005_nas:avp_header('NAS-IPv6-Address');
avp_header('NAS-Identifier') ->
    rfc4005_nas:avp_header('NAS-Identifier');
avp_header('NAS-Port') ->
    rfc4005_nas:avp_header('NAS-Port');
avp_header('NAS-Port-Id') ->
    rfc4005_nas:avp_header('NAS-Port-Id');
avp_header('NAS-Port-Type') ->
    rfc4005_nas:avp_header('NAS-Port-Type');
avp_header('Origin-AAA-Protocol') ->
    rfc4005_nas:avp_header('Origin-AAA-Protocol');
avp_header('Originating-Line-Info') ->
    rfc4005_nas:avp_header('Originating-Line-Info');
avp_header('Password-Retry') ->
    rfc4005_nas:avp_header('Password-Retry');
avp_header('Port-Limit') ->
    rfc4005_nas:avp_header('Port-Limit');
avp_header('Prompt') ->
    rfc4005_nas:avp_header('Prompt');
avp_header('QoS-Filter-Rule') ->
    rfc4005_nas:avp_header('QoS-Filter-Rule');
avp_header('Reply-Message') ->
    rfc4005_nas:avp_header('Reply-Message');
avp_header('Service-Type') ->
    rfc4005_nas:avp_header('Service-Type');
avp_header('State') -> rfc4005_nas:avp_header('State');
avp_header('Tunnel-Assignment-Id') ->
    rfc4005_nas:avp_header('Tunnel-Assignment-Id');
avp_header('Tunnel-Client-Auth-Id') ->
    rfc4005_nas:avp_header('Tunnel-Client-Auth-Id');
avp_header('Tunnel-Client-Endpoint') ->
    rfc4005_nas:avp_header('Tunnel-Client-Endpoint');
avp_header('Tunnel-Medium-Type') ->
    rfc4005_nas:avp_header('Tunnel-Medium-Type');
avp_header('Tunnel-Password') ->
    rfc4005_nas:avp_header('Tunnel-Password');
avp_header('Tunnel-Preference') ->
    rfc4005_nas:avp_header('Tunnel-Preference');
avp_header('Tunnel-Private-Group-Id') ->
    rfc4005_nas:avp_header('Tunnel-Private-Group-Id');
avp_header('Tunnel-Server-Auth-Id') ->
    rfc4005_nas:avp_header('Tunnel-Server-Auth-Id');
avp_header('Tunnel-Server-Endpoint') ->
    rfc4005_nas:avp_header('Tunnel-Server-Endpoint');
avp_header('Tunnel-Type') ->
    rfc4005_nas:avp_header('Tunnel-Type');
avp_header('Tunneling') ->
    rfc4005_nas:avp_header('Tunneling');
avp_header('User-Password') ->
    rfc4005_nas:avp_header('User-Password');
avp_header(_) -> erlang:error(badarg).

avp(T, Data, 'Accounting-EAP-Auth-Method') ->
    diameter_types:'Unsigned64'(T, Data);
avp(T, Data, 'EAP-Key-Name') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'EAP-Master-Session-Key') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'EAP-Payload') ->
    diameter_types:'OctetString'(T, Data);
avp(T, Data, 'EAP-Reissued-Payload') ->
    diameter_types:'OctetString'(T, Data);
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
avp(T, Data, 'ARAP-Challenge-Response') ->
    rfc4005_nas:avp(T, Data, 'ARAP-Challenge-Response');
avp(T, Data, 'ARAP-Features') ->
    rfc4005_nas:avp(T, Data, 'ARAP-Features');
avp(T, Data, 'ARAP-Password') ->
    rfc4005_nas:avp(T, Data, 'ARAP-Password');
avp(T, Data, 'ARAP-Security') ->
    rfc4005_nas:avp(T, Data, 'ARAP-Security');
avp(T, Data, 'ARAP-Security-Data') ->
    rfc4005_nas:avp(T, Data, 'ARAP-Security-Data');
avp(T, Data, 'ARAP-Zone-Access') ->
    rfc4005_nas:avp(T, Data, 'ARAP-Zone-Access');
avp(T, Data, 'Accounting-Auth-Method') ->
    rfc4005_nas:avp(T, Data, 'Accounting-Auth-Method');
avp(T, Data, 'Accounting-Input-Octets') ->
    rfc4005_nas:avp(T, Data, 'Accounting-Input-Octets');
avp(T, Data, 'Accounting-Input-Packets') ->
    rfc4005_nas:avp(T, Data, 'Accounting-Input-Packets');
avp(T, Data, 'Accounting-Output-Octets') ->
    rfc4005_nas:avp(T, Data, 'Accounting-Output-Octets');
avp(T, Data, 'Accounting-Output-Packets') ->
    rfc4005_nas:avp(T, Data, 'Accounting-Output-Packets');
avp(T, Data, 'Acct-Authentic') ->
    rfc4005_nas:avp(T, Data, 'Acct-Authentic');
avp(T, Data, 'Acct-Delay-Time') ->
    rfc4005_nas:avp(T, Data, 'Acct-Delay-Time');
avp(T, Data, 'Acct-Link-Count') ->
    rfc4005_nas:avp(T, Data, 'Acct-Link-Count');
avp(T, Data, 'Acct-Session-Time') ->
    rfc4005_nas:avp(T, Data, 'Acct-Session-Time');
avp(T, Data, 'Acct-Tunnel-Connection') ->
    rfc4005_nas:avp(T, Data, 'Acct-Tunnel-Connection');
avp(T, Data, 'Acct-Tunnel-Packets-Lost') ->
    rfc4005_nas:avp(T, Data, 'Acct-Tunnel-Packets-Lost');
avp(T, Data, 'CHAP-Algorithm') ->
    rfc4005_nas:avp(T, Data, 'CHAP-Algorithm');
avp(T, Data, 'CHAP-Auth') ->
    grouped_avp(T, 'CHAP-Auth', Data);
avp(T, Data, 'CHAP-Challenge') ->
    rfc4005_nas:avp(T, Data, 'CHAP-Challenge');
avp(T, Data, 'CHAP-Ident') ->
    rfc4005_nas:avp(T, Data, 'CHAP-Ident');
avp(T, Data, 'CHAP-Response') ->
    rfc4005_nas:avp(T, Data, 'CHAP-Response');
avp(T, Data, 'Callback-Id') ->
    rfc4005_nas:avp(T, Data, 'Callback-Id');
avp(T, Data, 'Callback-Number') ->
    rfc4005_nas:avp(T, Data, 'Callback-Number');
avp(T, Data, 'Called-Station-Id') ->
    rfc4005_nas:avp(T, Data, 'Called-Station-Id');
avp(T, Data, 'Calling-Station-Id') ->
    rfc4005_nas:avp(T, Data, 'Calling-Station-Id');
avp(T, Data, 'Configuration-Token') ->
    rfc4005_nas:avp(T, Data, 'Configuration-Token');
avp(T, Data, 'Connect-Info') ->
    rfc4005_nas:avp(T, Data, 'Connect-Info');
avp(T, Data, 'Filter-Id') ->
    rfc4005_nas:avp(T, Data, 'Filter-Id');
avp(T, Data, 'Framed-AppleTalk-Link') ->
    rfc4005_nas:avp(T, Data, 'Framed-AppleTalk-Link');
avp(T, Data, 'Framed-AppleTalk-Network') ->
    rfc4005_nas:avp(T, Data, 'Framed-AppleTalk-Network');
avp(T, Data, 'Framed-AppleTalk-Zone') ->
    rfc4005_nas:avp(T, Data, 'Framed-AppleTalk-Zone');
avp(T, Data, 'Framed-Compression') ->
    rfc4005_nas:avp(T, Data, 'Framed-Compression');
avp(T, Data, 'Framed-IP-Address') ->
    rfc4005_nas:avp(T, Data, 'Framed-IP-Address');
avp(T, Data, 'Framed-IP-Netmask') ->
    rfc4005_nas:avp(T, Data, 'Framed-IP-Netmask');
avp(T, Data, 'Framed-IPX-Network') ->
    rfc4005_nas:avp(T, Data, 'Framed-IPX-Network');
avp(T, Data, 'Framed-IPv6-Pool') ->
    rfc4005_nas:avp(T, Data, 'Framed-IPv6-Pool');
avp(T, Data, 'Framed-IPv6-Prefix') ->
    rfc4005_nas:avp(T, Data, 'Framed-IPv6-Prefix');
avp(T, Data, 'Framed-IPv6-Route') ->
    rfc4005_nas:avp(T, Data, 'Framed-IPv6-Route');
avp(T, Data, 'Framed-Interface-Id') ->
    rfc4005_nas:avp(T, Data, 'Framed-Interface-Id');
avp(T, Data, 'Framed-MTU') ->
    rfc4005_nas:avp(T, Data, 'Framed-MTU');
avp(T, Data, 'Framed-Pool') ->
    rfc4005_nas:avp(T, Data, 'Framed-Pool');
avp(T, Data, 'Framed-Protocol') ->
    rfc4005_nas:avp(T, Data, 'Framed-Protocol');
avp(T, Data, 'Framed-Route') ->
    rfc4005_nas:avp(T, Data, 'Framed-Route');
avp(T, Data, 'Framed-Routing') ->
    rfc4005_nas:avp(T, Data, 'Framed-Routing');
avp(T, Data, 'Idle-Timeout') ->
    rfc4005_nas:avp(T, Data, 'Idle-Timeout');
avp(T, Data, 'Login-IP-Host') ->
    rfc4005_nas:avp(T, Data, 'Login-IP-Host');
avp(T, Data, 'Login-IPv6-Host') ->
    rfc4005_nas:avp(T, Data, 'Login-IPv6-Host');
avp(T, Data, 'Login-LAT-Group') ->
    rfc4005_nas:avp(T, Data, 'Login-LAT-Group');
avp(T, Data, 'Login-LAT-Node') ->
    rfc4005_nas:avp(T, Data, 'Login-LAT-Node');
avp(T, Data, 'Login-LAT-Port') ->
    rfc4005_nas:avp(T, Data, 'Login-LAT-Port');
avp(T, Data, 'Login-LAT-Service') ->
    rfc4005_nas:avp(T, Data, 'Login-LAT-Service');
avp(T, Data, 'Login-Service') ->
    rfc4005_nas:avp(T, Data, 'Login-Service');
avp(T, Data, 'Login-TCP-Port') ->
    rfc4005_nas:avp(T, Data, 'Login-TCP-Port');
avp(T, Data, 'NAS-Filter-Rule') ->
    rfc4005_nas:avp(T, Data, 'NAS-Filter-Rule');
avp(T, Data, 'NAS-IP-Address') ->
    rfc4005_nas:avp(T, Data, 'NAS-IP-Address');
avp(T, Data, 'NAS-IPv6-Address') ->
    rfc4005_nas:avp(T, Data, 'NAS-IPv6-Address');
avp(T, Data, 'NAS-Identifier') ->
    rfc4005_nas:avp(T, Data, 'NAS-Identifier');
avp(T, Data, 'NAS-Port') ->
    rfc4005_nas:avp(T, Data, 'NAS-Port');
avp(T, Data, 'NAS-Port-Id') ->
    rfc4005_nas:avp(T, Data, 'NAS-Port-Id');
avp(T, Data, 'NAS-Port-Type') ->
    rfc4005_nas:avp(T, Data, 'NAS-Port-Type');
avp(T, Data, 'Origin-AAA-Protocol') ->
    rfc4005_nas:avp(T, Data, 'Origin-AAA-Protocol');
avp(T, Data, 'Originating-Line-Info') ->
    rfc4005_nas:avp(T, Data, 'Originating-Line-Info');
avp(T, Data, 'Password-Retry') ->
    rfc4005_nas:avp(T, Data, 'Password-Retry');
avp(T, Data, 'Port-Limit') ->
    rfc4005_nas:avp(T, Data, 'Port-Limit');
avp(T, Data, 'Prompt') ->
    rfc4005_nas:avp(T, Data, 'Prompt');
avp(T, Data, 'QoS-Filter-Rule') ->
    rfc4005_nas:avp(T, Data, 'QoS-Filter-Rule');
avp(T, Data, 'Reply-Message') ->
    rfc4005_nas:avp(T, Data, 'Reply-Message');
avp(T, Data, 'Service-Type') ->
    rfc4005_nas:avp(T, Data, 'Service-Type');
avp(T, Data, 'State') ->
    rfc4005_nas:avp(T, Data, 'State');
avp(T, Data, 'Tunnel-Assignment-Id') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Assignment-Id');
avp(T, Data, 'Tunnel-Client-Auth-Id') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Client-Auth-Id');
avp(T, Data, 'Tunnel-Client-Endpoint') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Client-Endpoint');
avp(T, Data, 'Tunnel-Medium-Type') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Medium-Type');
avp(T, Data, 'Tunnel-Password') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Password');
avp(T, Data, 'Tunnel-Preference') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Preference');
avp(T, Data, 'Tunnel-Private-Group-Id') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Private-Group-Id');
avp(T, Data, 'Tunnel-Server-Auth-Id') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Server-Auth-Id');
avp(T, Data, 'Tunnel-Server-Endpoint') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Server-Endpoint');
avp(T, Data, 'Tunnel-Type') ->
    rfc4005_nas:avp(T, Data, 'Tunnel-Type');
avp(T, Data, 'Tunneling') ->
    grouped_avp(T, 'Tunneling', Data);
avp(T, Data, 'User-Password') ->
    rfc4005_nas:avp(T, Data, 'User-Password');
avp(_, _, _) -> erlang:error(badarg).

enumerated_avp(_, _, _) -> erlang:error(badarg).

empty_value('Proxy-Info') -> empty_group('Proxy-Info');
empty_value('Failed-AVP') -> empty_group('Failed-AVP');
empty_value('Experimental-Result') ->
    empty_group('Experimental-Result');
empty_value('Vendor-Specific-Application-Id') ->
    empty_group('Vendor-Specific-Application-Id');
empty_value('E2E-Sequence') ->
    empty_group('E2E-Sequence');
empty_value('CHAP-Auth') -> empty_group('CHAP-Auth');
empty_value('Tunneling') -> empty_group('Tunneling');
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
empty_value('NAS-Port-Type') -> <<0, 0, 0, 0>>;
empty_value('Prompt') -> <<0, 0, 0, 0>>;
empty_value('CHAP-Algorithm') -> <<0, 0, 0, 0>>;
empty_value('Service-Type') -> <<0, 0, 0, 0>>;
empty_value('Framed-Protocol') -> <<0, 0, 0, 0>>;
empty_value('Framed-Routing') -> <<0, 0, 0, 0>>;
empty_value('Framed-Compression') -> <<0, 0, 0, 0>>;
empty_value('ARAP-Zone-Access') -> <<0, 0, 0, 0>>;
empty_value('Login-Service') -> <<0, 0, 0, 0>>;
empty_value('Tunnel-Type') -> <<0, 0, 0, 0>>;
empty_value('Tunnel-Medium-Type') -> <<0, 0, 0, 0>>;
empty_value('Acct-Authentic') -> <<0, 0, 0, 0>>;
empty_value('Accounting-Auth-Method') -> <<0, 0, 0, 0>>;
empty_value(Name) -> empty(Name).

dict() ->
    [1,
     {avp_types,
      [{"Accounting-EAP-Auth-Method", 465, "Unsigned64", []},
       {"EAP-Key-Name", 102, "OctetString", []},
       {"EAP-Master-Session-Key", 464, "OctetString", []},
       {"EAP-Payload", 462, "OctetString", []},
       {"EAP-Reissued-Payload", 463, "OctetString", []}]},
     {avp_vendor_id, []}, {codecs, []},
     {command_codes, [{268, "DER", "DEA"}]},
     {custom_types, []}, {define, []}, {enum, []},
     {grouped, []}, {id, 5},
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
       {rfc4005_nas,
	[{"ARAP-Challenge-Response", 84, "OctetString", "M"},
	 {"ARAP-Features", 71, "OctetString", "M"},
	 {"ARAP-Password", 70, "OctetString", "M"},
	 {"ARAP-Security", 73, "Unsigned32", "M"},
	 {"ARAP-Security-Data", 74, "OctetString", "M"},
	 {"ARAP-Zone-Access", 72, "Enumerated", "M"},
	 {"Accounting-Auth-Method", 406, "Enumerated", "M"},
	 {"Accounting-Input-Octets", 363, "Unsigned64", "M"},
	 {"Accounting-Input-Packets", 365, "Unsigned64", "M"},
	 {"Accounting-Output-Octets", 364, "Unsigned64", "M"},
	 {"Accounting-Output-Packets", 366, "Unsigned64", "M"},
	 {"Acct-Authentic", 45, "Enumerated", "M"},
	 {"Acct-Delay-Time", 41, "Unsigned32", "M"},
	 {"Acct-Link-Count", 51, "Unsigned32", "M"},
	 {"Acct-Session-Time", 46, "Unsigned32", "M"},
	 {"Acct-Tunnel-Connection", 68, "OctetString", "M"},
	 {"Acct-Tunnel-Packets-Lost", 86, "Unsigned32", "M"},
	 {"CHAP-Algorithm", 403, "Enumerated", "M"},
	 {"CHAP-Auth", 402, "Grouped", "M"},
	 {"CHAP-Challenge", 60, "OctetString", "M"},
	 {"CHAP-Ident", 404, "OctetString", "M"},
	 {"CHAP-Response", 405, "OctetString", "M"},
	 {"Callback-Id", 20, "UTF8String", "M"},
	 {"Callback-Number", 19, "UTF8String", "M"},
	 {"Called-Station-Id", 30, "UTF8String", "M"},
	 {"Calling-Station-Id", 31, "UTF8String", "M"},
	 {"Configuration-Token", 78, "OctetString", "M"},
	 {"Connect-Info", 77, "UTF8String", "M"},
	 {"Filter-Id", 11, "UTF8String", "M"},
	 {"Framed-AppleTalk-Link", 37, "Unsigned32", "M"},
	 {"Framed-AppleTalk-Network", 38, "Unsigned32", "M"},
	 {"Framed-AppleTalk-Zone", 39, "OctetString", "M"},
	 {"Framed-Compression", 13, "Enumerated", "M"},
	 {"Framed-IP-Address", 8, "OctetString", "M"},
	 {"Framed-IP-Netmask", 9, "OctetString", "M"},
	 {"Framed-IPX-Network", 23, "UTF8String", "M"},
	 {"Framed-IPv6-Pool", 100, "OctetString", "M"},
	 {"Framed-IPv6-Prefix", 97, "OctetString", "M"},
	 {"Framed-IPv6-Route", 99, "UTF8String", "M"},
	 {"Framed-Interface-Id", 96, "Unsigned64", "M"},
	 {"Framed-MTU", 12, "Unsigned32", "M"},
	 {"Framed-Pool", 88, "OctetString", "M"},
	 {"Framed-Protocol", 7, "Enumerated", "M"},
	 {"Framed-Route", 22, "UTF8String", "M"},
	 {"Framed-Routing", 10, "Enumerated", "M"},
	 {"Idle-Timeout", 28, "Unsigned32", "M"},
	 {"Login-IP-Host", 14, "OctetString", "M"},
	 {"Login-IPv6-Host", 98, "OctetString", "M"},
	 {"Login-LAT-Group", 36, "OctetString", "M"},
	 {"Login-LAT-Node", 35, "OctetString", "M"},
	 {"Login-LAT-Port", 63, "OctetString", "M"},
	 {"Login-LAT-Service", 34, "OctetString", "M"},
	 {"Login-Service", 15, "Enumerated", "M"},
	 {"Login-TCP-Port", 16, "Unsigned32", "M"},
	 {"NAS-Filter-Rule", 400, "IPFilterRule", "M"},
	 {"NAS-IP-Address", 4, "OctetString", "M"},
	 {"NAS-IPv6-Address", 95, "OctetString", "M"},
	 {"NAS-Identifier", 32, "UTF8String", "M"},
	 {"NAS-Port", 5, "Unsigned32", "M"},
	 {"NAS-Port-Id", 87, "UTF8String", "M"},
	 {"NAS-Port-Type", 61, "Enumerated", "M"},
	 {"Origin-AAA-Protocol", 408, "Enumerated", "M"},
	 {"Originating-Line-Info", 94, "OctetString", []},
	 {"Password-Retry", 75, "Unsigned32", "M"},
	 {"Port-Limit", 62, "Unsigned32", "M"},
	 {"Prompt", 76, "Enumerated", "M"},
	 {"QoS-Filter-Rule", 407, "QoSFilterRule", []},
	 {"Reply-Message", 18, "UTF8String", "M"},
	 {"Service-Type", 6, "Enumerated", "M"},
	 {"State", 24, "OctetString", "M"},
	 {"Tunnel-Assignment-Id", 82, "OctetString", "M"},
	 {"Tunnel-Client-Auth-Id", 90, "UTF8String", "M"},
	 {"Tunnel-Client-Endpoint", 66, "UTF8String", "M"},
	 {"Tunnel-Medium-Type", 65, "Enumerated", "M"},
	 {"Tunnel-Password", 69, "OctetString", "M"},
	 {"Tunnel-Preference", 83, "Unsigned32", "M"},
	 {"Tunnel-Private-Group-Id", 81, "OctetString", "M"},
	 {"Tunnel-Server-Auth-Id", 91, "UTF8String", "M"},
	 {"Tunnel-Server-Endpoint", 67, "UTF8String", "M"},
	 {"Tunnel-Type", 64, "Enumerated", "M"},
	 {"Tunneling", 401, "Grouped", "M"},
	 {"User-Password", 2, "OctetString", "M"}]}]},
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
	   {"GRANT_AND_LOSE", 3}]}]},
       {rfc4005_nas,
	[{"NAS-Port-Type",
	  [{"ASYNC", 0}, {"SYNC", 1}, {"ISDN_SYNC", 2},
	   {"ISDN_ASYNC_V120", 3}, {"ISDN_ASYNC_V110", 4},
	   {"VIRTUAL", 5}, {"PIAFS", 6}, {"HDLC_CLEAR_CHANNEL", 7},
	   {"X25", 8}, {"X75", 9}, {"G3FAX", 10}, {"SDSL", 11},
	   {"ADSL-CAP", 12}, {"ADSL-DMT", 13}, {"IDSL", 14},
	   {"ETHERNET", 15}, {"XDSL", 16}, {"CABLE", 17},
	   {"WIRELESS_OTHER", 18}, {"WIRELESS_802.11", 19},
	   {"TOKEN-RING", 20}, {"FDDI", 21},
	   {"WIRELESS_CDMA2000", 22}, {"WIRELESS_UMTS", 23},
	   {"WIRELESS_1X-EV", 24}, {"IAPP", 25}]},
	 {"Prompt", [{"NO_ECHO", 0}, {"ECHO", 1}]},
	 {"CHAP-Algorithm", [{"WITH_MD5", 5}]},
	 {"Service-Type",
	  [{"LOGIN", 1}, {"FRAMED", 2}, {"CALLBACK_LOGIN", 3},
	   {"CALLBACK_FRAMED", 4}, {"OUTBOUND", 5},
	   {"ADMINISTRATIVE", 6}, {"NAS_PROMPT", 7},
	   {"AUTHENTICATE_ONLY", 8}, {"CALLBACK_NAS_PROMPT", 9},
	   {"CALL_CHECK", 10}, {"CALLBACK_ADMINISTRATIVE", 11},
	   {"VOICE", 12}, {"FAX", 13}, {"MODEM_RELAY", 14},
	   {"IAPP-REGISTER", 15}, {"IAPP-AP-CHECK", 16},
	   {"AUTHORIZE_ONLY", 17}]},
	 {"Framed-Protocol",
	  [{"PPP", 1}, {"SLIP", 2}, {"ARAP", 3}, {"GANDALF", 4},
	   {"XYLOGICS", 5}, {"X75", 6}]},
	 {"Framed-Routing",
	  [{"NONE", 0}, {"SEND", 1}, {"LISTEN", 2},
	   {"SEND_AND_LISTEN", 3}]},
	 {"Framed-Compression",
	  [{"NONE", 0}, {"VJ", 1}, {"IPX", 2}, {"STAC-LZS", 3}]},
	 {"ARAP-Zone-Access",
	  [{"DEFAULT", 1}, {"FILTER_INCLUSIVELY", 2},
	   {"FILTER_EXCLUSIVELY", 4}]},
	 {"Login-Service",
	  [{"TELNET", 0}, {"RLOGIN", 1}, {"TCP_CLEAR", 2},
	   {"PORTMASTER", 3}, {"LAT", 4}, {"X25-PAD", 5},
	   {"X25-T3POS", 6}, {"TCP_CLEAR_QUIET", 8}]},
	 {"Tunnel-Type",
	  [{"PPTP", 1}, {"L2F", 2}, {"L2TP", 3}, {"ATMP", 4},
	   {"VTP", 5}, {"AH", 6}, {"IP-IP", 7}, {"MIN-IP-IP", 8},
	   {"ESP", 9}, {"GRE", 10}, {"DVS", 11}, {"IP-IN-IP", 12},
	   {"VLAN", 13}]},
	 {"Tunnel-Medium-Type",
	  [{"IPV4", 1}, {"IPV6", 2}, {"NSAP", 3}, {"HDLC", 4},
	   {"BBN_1822", 5}, {"802", 6}, {"E163", 7}, {"E164", 8},
	   {"F69", 9}, {"X121", 10}, {"IPX", 11},
	   {"APPLETALK", 12}, {"DECNET_IV", 13},
	   {"BANYAN_VINES", 14}, {"E164_NSAP", 15}]},
	 {"Acct-Authentic",
	  [{"RADIUS", 1}, {"LOCAL", 2}, {"REMOTE", 3},
	   {"DIAMETER", 4}]},
	 {"Accounting-Auth-Method",
	  [{"PAP", 1}, {"CHAP", 2}, {"MS-CHAP-1", 3},
	   {"MS-CHAP-2", 4}, {"EAP", 5}, {"NONE", 7}]}]}]},
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
	 {"E2E-Sequence", 300, [], [{{2, '*'}, {"AVP"}}]}]},
       {rfc4005_nas,
	[{"CHAP-Auth", 402, [],
	  [{"CHAP-Algorithm"}, {"CHAP-Ident"}, ["CHAP-Response"],
	   {'*', ["AVP"]}]},
	 {"Tunneling", 401, [],
	  [{"Tunnel-Type"}, {"Tunnel-Medium-Type"},
	   {"Tunnel-Client-Endpoint"}, {"Tunnel-Server-Endpoint"},
	   ["Tunnel-Preference"], ["Tunnel-Client-Auth-Id"],
	   ["Tunnel-Server-Auth-Id"], ["Tunnel-Assignment-Id"],
	   ["Tunnel-Password"], ["Tunnel-Private-Group-Id"]]}]}]},
     {inherits,
      [{"rfc4005_nas", []},
       {"diameter_gen_base_rfc3588", []}]},
     {messages,
      [{"DER", 268, ['REQ', 'PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Origin-Host"}, {"Origin-Realm"},
	 {"Destination-Realm"}, {"Auth-Request-Type"},
	 {"EAP-Payload"}, ["Destination-Host"],
	 ["NAS-Identifier"], ["NAS-IP-Address"],
	 ["NAS-IPv6-Address"], ["NAS-Port"], ["NAS-Port-Id"],
	 ["NAS-Port-Type"], ["Origin-State-Id"], ["Port-Limit"],
	 ["User-Name"], ["EAP-Key-Name"], ["Service-Type"],
	 ["State"], ["Authorization-Lifetime"],
	 ["Auth-Grace-Period"], ["Auth-Session-State"],
	 ["Callback-Number"], ["Called-Station-Id"],
	 ["Calling-Station-Id"], ["Originating-Line-Info"],
	 ["Connect-Info"], {'*', ["Framed-Compression"]},
	 ["Framed-Interface-Id"], ["Framed-IP-Address"],
	 {'*', ["Framed-IPv6-Prefix"]}, ["Framed-IP-Netmask"],
	 ["Framed-MTU"], ["Framed-Protocol"],
	 {'*', ["Tunneling"]}, {'*', ["Proxy-Info"]},
	 {'*', ["Route-Record"]}, {'*', ["AVP"]}]},
       {"DEA", 268, ['PXY'], [],
	[{{"Session-Id"}}, {"Auth-Application-Id"},
	 {"Auth-Request-Type"}, {"Result-Code"}, {"Origin-Host"},
	 {"Origin-Realm"}, ["User-Name"], ["EAP-Payload"],
	 ["EAP-Reissued-Payload"], ["EAP-Master-Session-Key"],
	 ["EAP-Key-Name"], ["Multi-Round-Time-Out"],
	 ["Accounting-EAP-Auth-Method"], ["Service-Type"],
	 {'*', ["Class"]}, {'*', ["Configuration-Token"]},
	 ["Acct-Interim-Interval"], ["Error-Message"],
	 ["Error-Reporting-Host"], {'*', ["Failed-AVP"]},
	 ["Idle-Timeout"], ["Authorization-Lifetime"],
	 ["Auth-Grace-Period"], ["Auth-Session-State"],
	 ["Re-Auth-Request-Type"], ["Session-Timeout"],
	 ["State"], {'*', ["Reply-Message"]},
	 ["Origin-State-Id"], {'*', ["Filter-Id"]},
	 ["Port-Limit"], ["Callback-Id"], ["Callback-Number"],
	 ["Framed-AppleTalk-Link"],
	 {'*', ["Framed-AppleTalk-Network"]},
	 ["Framed-AppleTalk-Zone"],
	 {'*', ["Framed-Compression"]}, ["Framed-Interface-Id"],
	 ["Framed-IP-Address"], {'*', ["Framed-IPv6-Prefix"]},
	 ["Framed-IPv6-Pool"], {'*', ["Framed-IPv6-Route"]},
	 ["Framed-IP-Netmask"], {'*', ["Framed-Route"]},
	 ["Framed-Pool"], ["Framed-IPX-Network"], ["Framed-MTU"],
	 ["Framed-Protocol"], ["Framed-Routing"],
	 {'*', ["NAS-Filter-Rule"]}, {'*', ["QoS-Filter-Rule"]},
	 {'*', ["Tunneling"]}, {'*', ["Redirect-Host"]},
	 ["Redirect-Host-Usage"], ["Redirect-Max-Cache-Time"],
	 {'*', ["Proxy-Info"]}, {'*', ["AVP"]}]}]}].


