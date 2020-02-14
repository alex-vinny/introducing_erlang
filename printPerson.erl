-module(printPerson).
-export([printing/1]).
-include("records.hrl").

printing(#person{} = P) ->
    io:format("Person: ~p ~p ~p.~n", [P#person.firstName, P#person.lastName, P#person.age]),
    ok.