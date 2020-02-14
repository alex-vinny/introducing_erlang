-module(atomExample).
-export([falling/2]).

falling(earth, Distance) when Distance >= 0 -> math:sqrt(2 * 9.8 * Distance);

falling(moon, Distance) when Distance >= 0 -> math:sqrt(2 * 1.6 * Distance);

falling(mars, Distance) when Distance >= 0 -> math:sqrt(2 * 3.71 * Distance).