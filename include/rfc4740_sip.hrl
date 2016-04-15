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

-hrl_name('rfc4740_sip.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

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


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

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
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('SIP-SERVER-ASSIGNMENT-TYPE_NO_ASSIGNMENT', 0).
-define('SIP-SERVER-ASSIGNMENT-TYPE_REGISTRATION', 1).
-define('SIP-SERVER-ASSIGNMENT-TYPE_RE_REGISTRATION', 2).
-define('SIP-SERVER-ASSIGNMENT-TYPE_UNREGISTERED_USER', 3).
-define('SIP-SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION', 4).
-define('SIP-SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION', 5).
-define('SIP-SERVER-ASSIGNMENT-TYPE_TIMEOUT_DEREGISTRATION_STORE', 6).
-define('SIP-SERVER-ASSIGNMENT-TYPE_USER_DEREGISTRATION_STORE', 7).
-define('SIP-SERVER-ASSIGNMENT-TYPE_ADMINISTRATIVE_DEREGISTRATION', 8).
-define('SIP-SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_FAILURE', 9).
-define('SIP-SERVER-ASSIGNMENT-TYPE_AUTHENTICATION_TIMEOUT', 10).
-define('SIP-SERVER-ASSIGNMENT-TYPE_DEREGISTRATION_TOO_MUCH_DATA', 11).
-define('SIP-AUTHENTICATION-SCHEME_DIGEST', 0).
-define('SIP-REASON-CODE_PERMANENT_TERMINATION', 0).
-define('SIP-REASON-CODE_NEW_SIP_SERVER_ASSIGNED', 1).
-define('SIP-REASON-CODE_SIP_SERVER_CHANGE', 2).
-define('SIP-REASON-CODE_REMOVE_SIP_SERVER', 3).
-define('SIP-USER-AUTHORIZATION-TYPE_REGISTRATION', 0).
-define('SIP-USER-AUTHORIZATION-TYPE_DEREGISTRATION', 1).
-define('SIP-USER-AUTHORIZATION-TYPE_REGISTRATION_AND_CAPABILITIES', 2).
-define('SIP-USER-DATA-ALREADY-AVAILABLE_USER_DATA_NOT_AVAILABLE', 0).
-define('SIP-USER-DATA-ALREADY-AVAILABLE_USER_DATA_ALREADY_AVAILABLE', 1).



%%% -------------------------------------------------------
%%% DEFINE Macros:
%%% -------------------------------------------------------

-define('RESULT-CODE_FIRST_REGISTRATION', 2003).
-define('RESULT-CODE_SUBSEQUENT_REGISTRATION', 2004).
-define('RESULT-CODE_UNREGISTERED_SERVICE', 2005).
-define('RESULT-CODE_SUCCESS_SERVER_NAME_NOT_STORED', 2006).
-define('RESULT-CODE_SERVER_SELECTION', 2007).
-define('RESULT-CODE_SUCCESS_AUTH_SENT_SERVER_NOT_STORED', 2008).
-define('RESULT-CODE_USER_NAME_REQUIRED', 4013).
-define('RESULT-CODE_USER_UNKNOWN', 5032).
-define('RESULT-CODE_IDENTITIES_DONT_MATCH', 5033).
-define('RESULT-CODE_IDENTITY_NOT_REGISTERED', 5034).
-define('RESULT-CODE_ROAMING_NOT_ALLOWED', 5035).
-define('RESULT-CODE_IDENTITY_ALREADY_REGISTERED', 5036).
-define('RESULT-CODE_AUTH_SCHEME_NOT_SUPPORTED', 5037).
-define('RESULT-CODE_IN_ASSIGNMENT_TYPE', 5038).
-define('RESULT-CODE_TOO_MUCH_DATA', 5039).
-define('RESULT-CODE_NOT_SUPPORTED_USER_DATA', 5040).



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

