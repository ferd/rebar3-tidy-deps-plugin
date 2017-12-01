-module(rebar_tidy_deps).

-export([init/1]).

%% ===================================================================
%% Public API
%% ===================================================================

-spec init(rebar_state:t()) -> {ok, rebar_state:t()}.
init(State) ->
    io:format("~p ~p init: '~p' ~n", [?MODULE, ?LINE, init]),
    NewState = rebar_state:add_resource(State, {pkg, rebar_new_pkg_resource}),
    NewState2 = rebar_state:add_resource(NewState, {git, rebar_new_git_resource}),
    NewState3 = rebar_state:add_resource(NewState2, {hg, rebar_new_hg_resource}),
    {ok, NewState3}.

