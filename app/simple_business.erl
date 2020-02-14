-module(simple_business).
-export([calculate/1]).

calculate(0) -> 0;

calculate(Number) ->
    math:pow(Number, 10).