-module(rebar_new_git_resource).

-behaviour(rebar_resource).

-export([lock/2
        ,download/3
        ,needs_update/2
        ,make_vsn/1]).

lock(Dir, Source) ->
  io:format("~p ~p Source: '~p' ~n", [?MODULE, ?LINE, Source]),
    rebar_git_resource:lock(Dir, Source).

download(Dir, Source, State) ->
  io:format("~p ~p Source: '~p' ~n", [?MODULE, ?LINE, Source]),
    rebar_git_resource:download(Dir, Source, State).

needs_update(Dir, Source) ->
  io:format("~p ~p Source: '~p' ~n", [?MODULE, ?LINE, Source]),
    rebar_git_resource:make_vsn(Dir, Source).

make_vsn(Dir) ->
  io:format("~p ~p Dir: '~p' ~n", [?MODULE, ?LINE, Dir]),
    rebar_git_resource:make_vsn(Dir).
