-module(bounce).
-export([report/0, counter/1]).

report() ->
    receive
        X -> io:format("Received ~p~n", [X]),
        report()
    end.

counter(Count) ->
    receive
        X -> io:format("Received #~p: ~p~n", [Count, X]),
        counter(Count + 1)
    end.