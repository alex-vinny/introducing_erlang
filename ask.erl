-module(ask).
-export([term/0]).

term() ->
    Input = io:read("What {planemo, distance} ? >>"),    
    process_term(Input).

process_term({ok, Term}) when is_tuple(Term) ->
    Result = 3 * element(2, Term),
    io:format("Yields ~w.~n", [Result]),
    term();

process_term({ok, quit}) ->
    io:format("Goodbye.~n");

process_term({ok, _}) ->
    io:format("You must enter a tuple.~n"),
    term();

process_term({error, _}) -> 
    io:format("You must to enter a tuple with correct syntax.~n"),
    term().
