-module(overall).
-export([product/1]).

product([]) -> 0; % in case of empty, return zero

product(List) -> product(List, 1).

product([], Product) -> Product; % when list empty, stop doing

product([Head|Tail], Product) -> product(Tail, Product * Head).