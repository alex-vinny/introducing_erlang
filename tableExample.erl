-module(tableExample).
-export([setup/0]).
-include("records.hrl").

setup() ->
    PeopleTable=ets:new(peoples, [named_table, {keypos, #person.id}]),
    ets:info(PeopleTable),
    ets:insert(peoples,
        #person{ id=1, firstName="John", lastName="Mccain", age=33, gender=man }),
    ets:insert(peoples,
        #person{ id=2, firstName="Maria", lastName="Salão", age=22, gender=female }),
    ets:insert(peoples,
        #person{ id=3, firstName="Mario", lastName="Matilde", age=75, gender=man }),
    ets:insert(peoples,
        #person{ id=4, firstName="Ezequiel", lastName="Zamboli", age=19, gender=man }),
    ets:info(PeopleTable).