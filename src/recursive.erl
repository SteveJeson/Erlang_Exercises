%%%-------------------------------------------------------------------
%%% @author zdzc
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 三月 2018 16:24
%%%-------------------------------------------------------------------
-module(recursive).
-author("zdzc").

%% API
-export([fac/1,len/1,len/1,tail_len/1,tail_len/2,duplicate/2,tail_duplicate/2,tail_reverse/1]).

fac(0) -> 1;
fac(N) when N > 0 -> N * fac(N-1).

len([]) -> 0;
len([_ | T]) -> 1 + len(T).

tail_len(L) -> tail_len(L,0).
tail_len([],Acc) -> Acc;
tail_len([_|T],Acc) -> tail_len(T,Acc+1).

duplicate(0,_) -> [];
duplicate(N,Term) when N > 0 ->
  [Term|duplicate(N-1,Term)].

tail_duplicate(N,Term) ->
  tail_duplicate(N,Term,0).

tail_duplicate(0,_,List) ->
  List;
tail_duplicate(N,Term,List) ->
  tail_duplicate(N-1,Term,[Term|List]).

tail_reverse(L) -> tail_reverse(L,[]).
tail_reverse([],Acc) -> Acc;
tail_reverse([H|T],Acc) -> tail_reverse(T,[H|Acc]).

