%%%-------------------------------------------------------------------
%%% @author zdzc
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. 三月 2018 13:30
%%%-------------------------------------------------------------------
-module(funcise).
-author("zdzc").

%% API
-export([greet/2]).

greet(male,Name) ->
  io:format("Hello, Mr. %s!", [Name]).

greet(female, Name) ->
  io:format("Hello, Mrs. %s!", [Name]).

greet(_,Name) ->
  io:format("Hello ~s!",[Name]).