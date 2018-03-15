%%%-------------------------------------------------------------------
%%% @author zdzc
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 三月 2018 15:28
%%%-------------------------------------------------------------------
-module(cases).
-author("zdzc").
-compile(export_all).

%% API
%%-export([]).

insert(X,[]) ->
  [X];
insert(X,Set) ->
  case lists:member(X,Set) of
    true -> Set;
    false -> [X|Set]
  end.

beach(Temperature) ->
  case Temperature of
    {celsius,N} when N >= 20, N =< 45 ->
      'favorable';
    {kelvin,N} when N >= 293, N =< 318 ->
      'scientifically favorable';
    {fahrenheit,N} when N >= 68, N =< 113 ->
      'favorable in us';
    _ -> 'avoid beach'
  end.