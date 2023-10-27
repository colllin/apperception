
% The given sequence
senses(s(c_off, obj_sensor_0_0), 1).
senses(s(c_off, obj_sensor_1_0), 1).
senses(s(c_off, obj_sensor_2_0), 1).
senses(s(c_off, obj_goal_0), 1).
senses(s(c_off, obj_risk_0), 1).
senses(s(c_on, obj_motor_0_0), 1).
senses(s(c_off, obj_sensor_0_0), 2).
senses(s(c_off, obj_sensor_1_0), 2).
senses(s(c_off, obj_sensor_2_0), 2).
senses(s(c_off, obj_goal_0), 2).
senses(s(c_off, obj_risk_0), 2).
senses(s(c_on, obj_motor_0_0), 2).
senses(s(c_off, obj_sensor_0_0), 3).
senses(s(c_off, obj_sensor_1_0), 3).
senses(s(c_off, obj_sensor_2_0), 3).
senses(s(c_off, obj_goal_0), 3).
senses(s(c_off, obj_risk_0), 3).
senses(s(c_on, obj_motor_0_0), 3).
senses(s(c_off, obj_sensor_0_0), 4).
senses(s(c_off, obj_sensor_1_0), 4).
senses(s(c_off, obj_sensor_2_0), 4).
senses(s(c_off, obj_goal_0), 4).
senses(s(c_off, obj_risk_0), 4).
senses(s(c_off, obj_motor_0_0), 4).
hidden(s(c_off, obj_sensor_0_0), 5).
hidden(s(c_off, obj_sensor_1_0), 5).
hidden(s(c_off, obj_sensor_2_0), 5).
hidden(s(c_off, obj_goal_0), 5).
hidden(s(c_off, obj_risk_0), 5).

% Elements
is_object(obj_sensor_0_0).
is_object(obj_sensor_1_0).
is_object(obj_sensor_2_0).
is_object(obj_goal_0).
is_object(obj_risk_0).
is_object(obj_motor_0_0).
is_concept(c_on).
is_concept(c_off).
is_time(1..5).

% At most one
:-
    holds(s(c_on, X), T),
    holds(s(c_off, X), T).

% At least one
:-
    permanent(isa(t_object, X)),
    is_time(T),
    not holds(s(c_on, X), T),
    not holds(s(c_off, X), T).

% Incompossibility
incompossible(s(c_on, X), s(c_off, X)) :-
    permanent(isa(t_object, X)).

% Output exclusions
exclusion_output("c_on+c_off").
