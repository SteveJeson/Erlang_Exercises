%%%-------------------------------------------------------------------
%%% @author jason
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Aug 2018 下午1:28
%%%-------------------------------------------------------------------
-module(sup).
-author("jason").

%% API
-export([start/2,start_link/2,init/1,loop/1]).

start(Mod,Args) ->
  spawn(?MODULE, init, [{Mod, Args}]).

start_link(Mod,Args) ->
  spawn_link(?MODULE, init, [{Mod, Args}]).

init({Mod,Args}) ->
  process_flag(trap_exit, true),
  loop({Mod,start_link,Args}).

loop({M,F,A}) ->
  Pid = apply(M,F,A),
  receive
    {'EXIT', _From, shutdown} ->
      exit(shutdown);
    {'EXIT', Pid, Reason} ->
      io:format("Process ~p exited for reason ~p~n", [Pid,Reason]),
      loop({M,F,A})
  end.
