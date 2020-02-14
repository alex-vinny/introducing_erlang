%% @autor Alex Zâmboli <alex.zamboli@gmail.com> [http://zamboli.blog.com]
%% @doc Fundations of documentation on Erlang
%% @reference from <a ref="http://erlang.org">Official site language</a>
%% @copyright 2019 by Alex Zâmboli
%% @version 01.

-module(drop).
-export([fall_drop/1]).

-spec(fall_drop(number()) -> number()).

fall_drop(Distance) -> math:sqrt(2 * 9.8 * Distance).

%% To generate a html file for documentation
%% use the following command:
%%
%% > edoc:files(["file.erl"], [{dir, "doc"}]).

