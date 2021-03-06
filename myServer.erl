-module(myServer).
-behaviour(gen_server).
-export([start_link/0]).    % startup
-export([init/1,
         handle_call/3,
         handle_cast/2,
         handle_info/2,
         terminate/2,
         code_change/3]).   % gen_server interface
-define(SERVER, ?MODULE).   % macro to define this module as server
-record(state, {count}).    % counter state

%%% entry point, startup
start_link() ->
    gen_server:start_link({local, ?SERVER}, ?MODULE, [], []).

%%% gen_server callbacks
init([]) ->
    {ok, #state{ count=0 }}.

handle_call(_Request, _From, State) ->
    Value = _Request,
    Reply = {ok, business(Value)},
    NewState=#state{ count = State#state.count + 1 },
    {reply, Reply, NewState}.

handle_cast(_Msg, State) ->
    io:format("So far, calculated ~w in business process.~n", [State#state.count]),
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%% Business Logic comes here
business(0) -> 0;

business(Number) ->
    Number * Number + 100.