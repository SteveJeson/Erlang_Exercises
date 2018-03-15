%%%-------------------------------------------------------------------
%%% @author zdzc
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 三月 2018 15:00
%%%-------------------------------------------------------------------
-module(what_the_if).
-author("zdzc").

%% API
-export([heh_fine/0,oh_god/1,help_me/1]).

heh_fine() ->
  if 1 =:= 1 ->
    works
  end,
  if 1 =:= 2;1 =:= 1 ->
    works
  end,
  if 1 =:= 1, 1 =:= 2 ->
    fails
  end.

oh_god(N) ->
  if N =:= 2 -> might_succed;
  true -> always_does
end.

help_me(Animal) ->
  Talk = if Animal == cat -> "miao";
           Animal == beef -> "moo";
           Animal == dog -> "bark";
           Animal == tree -> "bark";
           true -> "fadf"
           end,
  {Animal, "says "++Talk++"!"}.


