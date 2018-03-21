%%%-------------------------------------------------------------------
%%% @author zdzc
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 21. 三月 2018 14:36
%%%-------------------------------------------------------------------
-module(records).
-author("zdzc").
-compile(export_all).
-include("records.hrl").

%% API
%%-export([]).

-record(robot, {name,
  type=industrial,
  hobbies,
  details=[]}).

-record(human, {name,
  age,
  gender = male,
  hobbies,
  details=[]
  }).

-record(user, {id, name, group, age}).

first_robot() ->
  #robot{name="Mechatron",
    type=handmade,
    details = ["Moved by a small man inside"]}.

first_human() ->
  #human{name="liuwei",
    age=20,
    hobbies = {piano,ball},
    details = ["I am a programmer"]}.

car_factory(CorpName) ->
  #robot{name=CorpName, hobbies = "building cars"}.

%% use pattern matching to filter
admin_panel(#user{name=Name, group=admin}) ->
  Name ++ " is allowed!";
admin_panel(#user{name=Name}) ->
  Name ++ " is not allowed".

%% can extend user without problem
adult_section(U = #user{}) when U#user.age >= 18 ->
%%  show stuff that can't be written in such a text
allwed;
adult_section(_) ->
%%  redirect to sesame street site
forbidden.

repairman(Rob) ->
  Details = Rob#robot.details,
  NewRob = Rob#robot{details = ["Repaired by repairman"|Details]},
  {repaired, NewRob}.

included() -> #included{some_field = "Some value"}.