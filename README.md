Kraken
=====

A server for translating diameter requests to REST and back again.

Dependencies
-----

Kraken is built in erlang. On OS X you can use homebrew to install:

    $ brew install erlang

It also depends on the rebar3 build tool. Instructions for installing that can be found (here)[http://www.rebar3.org/docs/getting-started].

Build
-----

To compile kraken:

    $ rebar3 compile

To build a release:

    $ rebar3 release

Running
-----

After the binary is built, it can be started in console mode:

    $ _build/default/rel/kraken/bin/kraken console

Note that unlike rails which is just the console, the console command will bring up the entire application.

Architecture
-----

Kraken acts as a middleman between the diameter protocol between the PCEF and an OCS system. Kraken receives credit control requests (among other base diameter messages), it then will make a web request to an OCS system, populate the diameter response and send it back to the PCEF peer.

Kraken also provides a web interface to send messages from the OCS to the PCEF (e.g. abort session requests and reauthorization requests). The web interface also provides endpoints for system status information (TBD). In test mode the web interface also provides an endpoint to simulate requests coming from the PCEF.
