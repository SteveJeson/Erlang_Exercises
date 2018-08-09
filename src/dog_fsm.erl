%%%-------------------------------------------------------------------
%%% @author jason
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Aug 2018 下午5:22
%%%-------------------------------------------------------------------
-module(dog_fsm).
-author("jason").

%% API
-export([start/0,squirrel/1,pet/1]).

start() ->
  spawn(fun() -> bark() end).

squirrel(Pid) -> Pid ! squirrel.

pet(Pid) -> Pid ! pet.

bark() ->
  io:format("Dog says: BARK! BARK!~n"),
  receive
    pet ->
      wag_tail();
    _ ->
      io:format("Dog is confused~n"),
      bark()
  after 2000 ->
    bark()
  end.

wag_tail() ->
  io:format("Dog wags its tail~n"),
  receive
    pet ->
      sit();
    _ ->
      io:format("Dogs is confused~n"),
      wag_tail()
  after 3000 ->
    bark()
  end.

sit() ->
  io:format("Dog is sitting. Gooooood boy!~n"),
  receive
    squirrel ->
      bark();
    _ ->
      io:format("Dog is confused~n"),
      sit()
  end.