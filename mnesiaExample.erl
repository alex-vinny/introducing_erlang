-module(mnesiaExample).
-export([setup/0]).
-include("records.hrl").

setup() ->
    mnesia:create_schema([node()]),
    mnesia:start(),
    mnesia:create_table(person, [{attributes, record_info(fields, person)}]),

    F = fun() ->
        mnesia:write(#person{ id=1, firstName="John", lastName="Mccain", age=31, gender=man }),
        mnesia:write(#person{ id=2, firstName="Mary", lastName="Luke", age=25, gender=female }),
        mnesia:write(#person{ id=3, firstName="Kid", lastName="Lu", age=89, gender=man }),
        mnesia:write(#person{ id=4, firstName="Rita", lastName="Lee", age=68, gender=female })
    end,

    mnesia:transaction(F).