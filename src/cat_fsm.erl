%%%-------------------------------------------------------------------
%%% @author jason
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Aug 2018 下午5:13
%%%-------------------------------------------------------------------
-module(cat_fsm).
-author("jason").

%% API
-export([start/0,event/2]).

start() ->
  spawn(fun() -> dont_give_crap() end).

event(Pid, Event) ->
  Ref = make_ref(), % won't care for monitors here
  Pid ! {self(), Ref, Event},
  receive
    {Ref, Msg} -> {ok, Msg}
  after 5000 ->
    {error, timeout}
  end.

dont_give_crap() ->
  receive
    {Pid, Ref, _Msg} -> Pid ! {Ref, meh};
    _ -> ok
  end,
  io:format("Switching to 'dont_give_crap' state~n"),
  dont_give_crap().