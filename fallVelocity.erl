%% file: FallVelocity.erl
%% First function created.

FallVelocity =
	fun(Distance) ->
		math:sqrt(2 * 9.8 * Distance)
	end.

FallVelocityMultipleStatements = 
	fun(Distance) ->
		X = (2 * 9.8 * Distance),
		math:sqrt(X)
	end.

Fvar = fun math::sqrt/1.