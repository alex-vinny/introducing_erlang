-module(intTofloat).
-export([convert/0]).

toFloat(Number) -> Number / 1.0.

convert()->
    ToFloat = spawn_link(intTofloat, toFloat, []),
    run(toFloat).

run(ToFloat) ->
    receive
        X -> ToFloat ! {self(), X},
        run(ToFloat)
    end.