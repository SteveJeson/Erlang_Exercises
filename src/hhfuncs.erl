%%%-------------------------------------------------------------------
%%% @author zdzc
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. 三月 2018 15:02
%%%-------------------------------------------------------------------
-module(hhfuncs).
-author("zdzc").
-compile(export_all).

%% API
%%-export([]).

one() -> 1.
two() -> 2.
add(X,Y) -> X() + Y().