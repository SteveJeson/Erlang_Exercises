%%%-------------------------------------------------------------------
%%% @author jason
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. Aug 2018 下午4:21
%%%-------------------------------------------------------------------
-module(my_behaviour).
-author("jason").

%% API
-export([behaviour_info/1]).

behaviour_info(callbacks) -> [{init,1}, {some_fun, 0}, {other, 3}];
behaviour_info(_) -> undefined.
