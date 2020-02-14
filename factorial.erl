-module(factorial).
-export([fac/1, factail/1]).

%% Normal approach
fac(N) when N > 1 ->
    N * fac(N - 1);

fac(N) when N =< 1 ->
    1.

%% Tail recursive
factail(N) ->
    factail(1, N, 1).

factail(Current, N, Result) when Current =< N ->
    NewResult = Result * Current,
    factail(Current + 1, N, NewResult);

factail(Current, N, Result) ->
    Result.