-module(simple_app).
-behaviour(application).
-export([start/2, stop/1]).

start(_Type, _StartArgs) ->
    simple_supervisor:start_link().

stop(_State) ->
    ok.