-module(mySupervisor).
-behaviour(supervisor).
-export([start_link/0]).    % startup
-export([init/1]).          % supervisior call (interface)
-define(SERVER, ?MODULE).

%%% main entry point
start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%% supervisor callback
init([]) ->
    RestartStrategy = one_for_one,  % or one_for_all, or rest_for_all
    MaxRestarts = 1,                % restarts every
    MaxSecondsBetweenRestarts = 5,  % five seconds

    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},

    Restart = permanent,    % or transient, or temporary
    Shutdown = 2000,        % miliseconds, coulde be infinity brutal_kill
    Type = worker,          % or supervisor

    MyServer = {myServer, {myServer, start_link, []},
                    Restart, Shutdown, Type, [myServer]},
    
    {ok, {SupFlags, [MyServer]}}.