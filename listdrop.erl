-module(listdrop).
-export([falls/1]).

falls(List) -> falls(List, []).

falls([], Results) -> lists:reverse(Results);

falls([Head|Tail], Results) -> falls(Tail, [6 * Head | Results]).