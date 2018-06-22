%%%-------------------------------------------------------------------
%%% @author jason
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Jun 2018 上午10:46
%%%-------------------------------------------------------------------
-module(fibo).
-author("jason").

%% API
-export([fibo_list/1]).

%%计算斐波那契数列的第Ｎ个元素
element(1) -> 1;
element(2) -> 1;
element(N) -> element(N-1) + element(N-2).

%%给定一个数,求出斐波那契的前N个数
fibo_list(N) -> fibo_list([], N).

fibo_list(L, 0) -> L;
fibo_list(L, N) -> fibo_list([element(N)|L],N-1).



