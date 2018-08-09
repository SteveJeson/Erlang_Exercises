%%%-------------------------------------------------------------------
%%% @author jason
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Aug 2018 上午10:29
%%%-------------------------------------------------------------------
-module(hotload).
-author("jason").

%% API
-export([server/1, upgrade/1]).

server(State) ->
  receive
    update ->
      NewState = ?MODULE:upgrade(State),
      ?MODULE:server(NewState);
    SomeMessage ->
      %% dosomething here
      server(State)
  end.

upgrade(OldState) ->
  receive
    {OldState, ok} -> OldState
  end.