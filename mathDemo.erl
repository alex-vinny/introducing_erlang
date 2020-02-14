-module(mathDemo).
-export([absolute_value_with_guard/1, absolute_value_with_pattern_match/1]).

%% Guards

absolute_value_with_guard(Number) when Number < 0 -> -Number;

absolute_value_with_guard(Number) when Number >= 0 -> Number.

%% Matching pattern

absolute_value_with_pattern_match(Number) when Number < 0 -> -Number;

absolute_value_with_pattern_match(0) -> 0;

absolute_value_with_pattern_match(Number) -> Number.