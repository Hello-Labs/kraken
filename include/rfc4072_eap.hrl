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

-hrl_name('rfc4072_eap.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-record('Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('Failed-AVP', {'AVP' = []}).

-record('Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('E2E-Sequence', {'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records from rfc4005_nas:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-ifndef('DISCONNECT-CAUSE_REBOOTING').
-define('DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('DISCONNECT-CAUSE_BUSY').
-define('DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('REDIRECT-HOST-USAGE_DONT_CACHE').
-define('REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_SESSION').
-define('REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_REALM').
-define('REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_HOST').
-define('REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('REDIRECT-HOST-USAGE_ALL_USER').
-define('REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('TERMINATION-CAUSE_LOGOUT').
-define('TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('TERMINATION-CAUSE_BAD_ANSWER').
-define('TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('TERMINATION-CAUSE_ADMINISTRATIVE').
-define('TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('TERMINATION-CAUSE_LINK_BROKEN').
-define('TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('TERMINATION-CAUSE_AUTH_EXPIRED').
-define('TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('TERMINATION-CAUSE_USER_MOVED').
-define('TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.



%%% -------------------------------------------------------
%%% ENUM Macros from rfc4005_nas:
%%% -------------------------------------------------------

-ifndef('NAS-PORT-TYPE_ASYNC').
-define('NAS-PORT-TYPE_ASYNC', 0).
-endif.
-ifndef('NAS-PORT-TYPE_SYNC').
-define('NAS-PORT-TYPE_SYNC', 1).
-endif.
-ifndef('NAS-PORT-TYPE_ISDN_SYNC').
-define('NAS-PORT-TYPE_ISDN_SYNC', 2).
-endif.
-ifndef('NAS-PORT-TYPE_ISDN_ASYNC_V120').
-define('NAS-PORT-TYPE_ISDN_ASYNC_V120', 3).
-endif.
-ifndef('NAS-PORT-TYPE_ISDN_ASYNC_V110').
-define('NAS-PORT-TYPE_ISDN_ASYNC_V110', 4).
-endif.
-ifndef('NAS-PORT-TYPE_VIRTUAL').
-define('NAS-PORT-TYPE_VIRTUAL', 5).
-endif.
-ifndef('NAS-PORT-TYPE_PIAFS').
-define('NAS-PORT-TYPE_PIAFS', 6).
-endif.
-ifndef('NAS-PORT-TYPE_HDLC_CLEAR_CHANNEL').
-define('NAS-PORT-TYPE_HDLC_CLEAR_CHANNEL', 7).
-endif.
-ifndef('NAS-PORT-TYPE_X25').
-define('NAS-PORT-TYPE_X25', 8).
-endif.
-ifndef('NAS-PORT-TYPE_X75').
-define('NAS-PORT-TYPE_X75', 9).
-endif.
-ifndef('NAS-PORT-TYPE_G3FAX').
-define('NAS-PORT-TYPE_G3FAX', 10).
-endif.
-ifndef('NAS-PORT-TYPE_SDSL').
-define('NAS-PORT-TYPE_SDSL', 11).
-endif.
-ifndef('NAS-PORT-TYPE_ADSL-CAP').
-define('NAS-PORT-TYPE_ADSL-CAP', 12).
-endif.
-ifndef('NAS-PORT-TYPE_ADSL-DMT').
-define('NAS-PORT-TYPE_ADSL-DMT', 13).
-endif.
-ifndef('NAS-PORT-TYPE_IDSL').
-define('NAS-PORT-TYPE_IDSL', 14).
-endif.
-ifndef('NAS-PORT-TYPE_ETHERNET').
-define('NAS-PORT-TYPE_ETHERNET', 15).
-endif.
-ifndef('NAS-PORT-TYPE_XDSL').
-define('NAS-PORT-TYPE_XDSL', 16).
-endif.
-ifndef('NAS-PORT-TYPE_CABLE').
-define('NAS-PORT-TYPE_CABLE', 17).
-endif.
-ifndef('NAS-PORT-TYPE_WIRELESS_OTHER').
-define('NAS-PORT-TYPE_WIRELESS_OTHER', 18).
-endif.
-ifndef('NAS-PORT-TYPE_WIRELESS_802.11').
-define('NAS-PORT-TYPE_WIRELESS_802.11', 19).
-endif.
-ifndef('NAS-PORT-TYPE_TOKEN-RING').
-define('NAS-PORT-TYPE_TOKEN-RING', 20).
-endif.
-ifndef('NAS-PORT-TYPE_FDDI').
-define('NAS-PORT-TYPE_FDDI', 21).
-endif.
-ifndef('NAS-PORT-TYPE_WIRELESS_CDMA2000').
-define('NAS-PORT-TYPE_WIRELESS_CDMA2000', 22).
-endif.
-ifndef('NAS-PORT-TYPE_WIRELESS_UMTS').
-define('NAS-PORT-TYPE_WIRELESS_UMTS', 23).
-endif.
-ifndef('NAS-PORT-TYPE_WIRELESS_1X-EV').
-define('NAS-PORT-TYPE_WIRELESS_1X-EV', 24).
-endif.
-ifndef('NAS-PORT-TYPE_IAPP').
-define('NAS-PORT-TYPE_IAPP', 25).
-endif.
-ifndef('PROMPT_NO_ECHO').
-define('PROMPT_NO_ECHO', 0).
-endif.
-ifndef('PROMPT_ECHO').
-define('PROMPT_ECHO', 1).
-endif.
-ifndef('CHAP-ALGORITHM_WITH_MD5').
-define('CHAP-ALGORITHM_WITH_MD5', 5).
-endif.
-ifndef('SERVICE-TYPE_LOGIN').
-define('SERVICE-TYPE_LOGIN', 1).
-endif.
-ifndef('SERVICE-TYPE_FRAMED').
-define('SERVICE-TYPE_FRAMED', 2).
-endif.
-ifndef('SERVICE-TYPE_CALLBACK_LOGIN').
-define('SERVICE-TYPE_CALLBACK_LOGIN', 3).
-endif.
-ifndef('SERVICE-TYPE_CALLBACK_FRAMED').
-define('SERVICE-TYPE_CALLBACK_FRAMED', 4).
-endif.
-ifndef('SERVICE-TYPE_OUTBOUND').
-define('SERVICE-TYPE_OUTBOUND', 5).
-endif.
-ifndef('SERVICE-TYPE_ADMINISTRATIVE').
-define('SERVICE-TYPE_ADMINISTRATIVE', 6).
-endif.
-ifndef('SERVICE-TYPE_NAS_PROMPT').
-define('SERVICE-TYPE_NAS_PROMPT', 7).
-endif.
-ifndef('SERVICE-TYPE_AUTHENTICATE_ONLY').
-define('SERVICE-TYPE_AUTHENTICATE_ONLY', 8).
-endif.
-ifndef('SERVICE-TYPE_CALLBACK_NAS_PROMPT').
-define('SERVICE-TYPE_CALLBACK_NAS_PROMPT', 9).
-endif.
-ifndef('SERVICE-TYPE_CALL_CHECK').
-define('SERVICE-TYPE_CALL_CHECK', 10).
-endif.
-ifndef('SERVICE-TYPE_CALLBACK_ADMINISTRATIVE').
-define('SERVICE-TYPE_CALLBACK_ADMINISTRATIVE', 11).
-endif.
-ifndef('SERVICE-TYPE_VOICE').
-define('SERVICE-TYPE_VOICE', 12).
-endif.
-ifndef('SERVICE-TYPE_FAX').
-define('SERVICE-TYPE_FAX', 13).
-endif.
-ifndef('SERVICE-TYPE_MODEM_RELAY').
-define('SERVICE-TYPE_MODEM_RELAY', 14).
-endif.
-ifndef('SERVICE-TYPE_IAPP-REGISTER').
-define('SERVICE-TYPE_IAPP-REGISTER', 15).
-endif.
-ifndef('SERVICE-TYPE_IAPP-AP-CHECK').
-define('SERVICE-TYPE_IAPP-AP-CHECK', 16).
-endif.
-ifndef('SERVICE-TYPE_AUTHORIZE_ONLY').
-define('SERVICE-TYPE_AUTHORIZE_ONLY', 17).
-endif.
-ifndef('FRAMED-PROTOCOL_PPP').
-define('FRAMED-PROTOCOL_PPP', 1).
-endif.
-ifndef('FRAMED-PROTOCOL_SLIP').
-define('FRAMED-PROTOCOL_SLIP', 2).
-endif.
-ifndef('FRAMED-PROTOCOL_ARAP').
-define('FRAMED-PROTOCOL_ARAP', 3).
-endif.
-ifndef('FRAMED-PROTOCOL_GANDALF').
-define('FRAMED-PROTOCOL_GANDALF', 4).
-endif.
-ifndef('FRAMED-PROTOCOL_XYLOGICS').
-define('FRAMED-PROTOCOL_XYLOGICS', 5).
-endif.
-ifndef('FRAMED-PROTOCOL_X75').
-define('FRAMED-PROTOCOL_X75', 6).
-endif.
-ifndef('FRAMED-ROUTING_NONE').
-define('FRAMED-ROUTING_NONE', 0).
-endif.
-ifndef('FRAMED-ROUTING_SEND').
-define('FRAMED-ROUTING_SEND', 1).
-endif.
-ifndef('FRAMED-ROUTING_LISTEN').
-define('FRAMED-ROUTING_LISTEN', 2).
-endif.
-ifndef('FRAMED-ROUTING_SEND_AND_LISTEN').
-define('FRAMED-ROUTING_SEND_AND_LISTEN', 3).
-endif.
-ifndef('FRAMED-COMPRESSION_NONE').
-define('FRAMED-COMPRESSION_NONE', 0).
-endif.
-ifndef('FRAMED-COMPRESSION_VJ').
-define('FRAMED-COMPRESSION_VJ', 1).
-endif.
-ifndef('FRAMED-COMPRESSION_IPX').
-define('FRAMED-COMPRESSION_IPX', 2).
-endif.
-ifndef('FRAMED-COMPRESSION_STAC-LZS').
-define('FRAMED-COMPRESSION_STAC-LZS', 3).
-endif.
-ifndef('ARAP-ZONE-ACCESS_DEFAULT').
-define('ARAP-ZONE-ACCESS_DEFAULT', 1).
-endif.
-ifndef('ARAP-ZONE-ACCESS_FILTER_INCLUSIVELY').
-define('ARAP-ZONE-ACCESS_FILTER_INCLUSIVELY', 2).
-endif.
-ifndef('ARAP-ZONE-ACCESS_FILTER_EXCLUSIVELY').
-define('ARAP-ZONE-ACCESS_FILTER_EXCLUSIVELY', 4).
-endif.
-ifndef('LOGIN-SERVICE_TELNET').
-define('LOGIN-SERVICE_TELNET', 0).
-endif.
-ifndef('LOGIN-SERVICE_RLOGIN').
-define('LOGIN-SERVICE_RLOGIN', 1).
-endif.
-ifndef('LOGIN-SERVICE_TCP_CLEAR').
-define('LOGIN-SERVICE_TCP_CLEAR', 2).
-endif.
-ifndef('LOGIN-SERVICE_PORTMASTER').
-define('LOGIN-SERVICE_PORTMASTER', 3).
-endif.
-ifndef('LOGIN-SERVICE_LAT').
-define('LOGIN-SERVICE_LAT', 4).
-endif.
-ifndef('LOGIN-SERVICE_X25-PAD').
-define('LOGIN-SERVICE_X25-PAD', 5).
-endif.
-ifndef('LOGIN-SERVICE_X25-T3POS').
-define('LOGIN-SERVICE_X25-T3POS', 6).
-endif.
-ifndef('LOGIN-SERVICE_TCP_CLEAR_QUIET').
-define('LOGIN-SERVICE_TCP_CLEAR_QUIET', 8).
-endif.
-ifndef('TUNNEL-TYPE_PPTP').
-define('TUNNEL-TYPE_PPTP', 1).
-endif.
-ifndef('TUNNEL-TYPE_L2F').
-define('TUNNEL-TYPE_L2F', 2).
-endif.
-ifndef('TUNNEL-TYPE_L2TP').
-define('TUNNEL-TYPE_L2TP', 3).
-endif.
-ifndef('TUNNEL-TYPE_ATMP').
-define('TUNNEL-TYPE_ATMP', 4).
-endif.
-ifndef('TUNNEL-TYPE_VTP').
-define('TUNNEL-TYPE_VTP', 5).
-endif.
-ifndef('TUNNEL-TYPE_AH').
-define('TUNNEL-TYPE_AH', 6).
-endif.
-ifndef('TUNNEL-TYPE_IP-IP').
-define('TUNNEL-TYPE_IP-IP', 7).
-endif.
-ifndef('TUNNEL-TYPE_MIN-IP-IP').
-define('TUNNEL-TYPE_MIN-IP-IP', 8).
-endif.
-ifndef('TUNNEL-TYPE_ESP').
-define('TUNNEL-TYPE_ESP', 9).
-endif.
-ifndef('TUNNEL-TYPE_GRE').
-define('TUNNEL-TYPE_GRE', 10).
-endif.
-ifndef('TUNNEL-TYPE_DVS').
-define('TUNNEL-TYPE_DVS', 11).
-endif.
-ifndef('TUNNEL-TYPE_IP-IN-IP').
-define('TUNNEL-TYPE_IP-IN-IP', 12).
-endif.
-ifndef('TUNNEL-TYPE_VLAN').
-define('TUNNEL-TYPE_VLAN', 13).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_IPV4').
-define('TUNNEL-MEDIUM-TYPE_IPV4', 1).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_IPV6').
-define('TUNNEL-MEDIUM-TYPE_IPV6', 2).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_NSAP').
-define('TUNNEL-MEDIUM-TYPE_NSAP', 3).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_HDLC').
-define('TUNNEL-MEDIUM-TYPE_HDLC', 4).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_BBN_1822').
-define('TUNNEL-MEDIUM-TYPE_BBN_1822', 5).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_802').
-define('TUNNEL-MEDIUM-TYPE_802', 6).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_E163').
-define('TUNNEL-MEDIUM-TYPE_E163', 7).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_E164').
-define('TUNNEL-MEDIUM-TYPE_E164', 8).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_F69').
-define('TUNNEL-MEDIUM-TYPE_F69', 9).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_X121').
-define('TUNNEL-MEDIUM-TYPE_X121', 10).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_IPX').
-define('TUNNEL-MEDIUM-TYPE_IPX', 11).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_APPLETALK').
-define('TUNNEL-MEDIUM-TYPE_APPLETALK', 12).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_DECNET_IV').
-define('TUNNEL-MEDIUM-TYPE_DECNET_IV', 13).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_BANYAN_VINES').
-define('TUNNEL-MEDIUM-TYPE_BANYAN_VINES', 14).
-endif.
-ifndef('TUNNEL-MEDIUM-TYPE_E164_NSAP').
-define('TUNNEL-MEDIUM-TYPE_E164_NSAP', 15).
-endif.
-ifndef('ACCT-AUTHENTIC_RADIUS').
-define('ACCT-AUTHENTIC_RADIUS', 1).
-endif.
-ifndef('ACCT-AUTHENTIC_LOCAL').
-define('ACCT-AUTHENTIC_LOCAL', 2).
-endif.
-ifndef('ACCT-AUTHENTIC_REMOTE').
-define('ACCT-AUTHENTIC_REMOTE', 3).
-endif.
-ifndef('ACCT-AUTHENTIC_DIAMETER').
-define('ACCT-AUTHENTIC_DIAMETER', 4).
-endif.
-ifndef('ACCOUNTING-AUTH-METHOD_PAP').
-define('ACCOUNTING-AUTH-METHOD_PAP', 1).
-endif.
-ifndef('ACCOUNTING-AUTH-METHOD_CHAP').
-define('ACCOUNTING-AUTH-METHOD_CHAP', 2).
-endif.
-ifndef('ACCOUNTING-AUTH-METHOD_MS-CHAP-1').
-define('ACCOUNTING-AUTH-METHOD_MS-CHAP-1', 3).
-endif.
-ifndef('ACCOUNTING-AUTH-METHOD_MS-CHAP-2').
-define('ACCOUNTING-AUTH-METHOD_MS-CHAP-2', 4).
-endif.
-ifndef('ACCOUNTING-AUTH-METHOD_EAP').
-define('ACCOUNTING-AUTH-METHOD_EAP', 5).
-endif.
-ifndef('ACCOUNTING-AUTH-METHOD_NONE').
-define('ACCOUNTING-AUTH-METHOD_NONE', 7).
-endif.

