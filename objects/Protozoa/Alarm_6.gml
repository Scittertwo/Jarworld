/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02C2CAF0
/// @DnDArgument : "var" "WhirlpowerTemp"
/// @DnDArgument : "op" "2"
if(WhirlpowerTemp > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14109F5A
	/// @DnDParent : 02C2CAF0
	/// @DnDArgument : "expr" "-0.1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "WhirlpowerTemp"
	WhirlpowerTemp += -0.1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 55344E1B
	/// @DnDParent : 02C2CAF0
	/// @DnDArgument : "speed" "WhirlpowerTemp"
	speed = WhirlpowerTemp;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 73CF53DF
	/// @DnDInput : 2
	/// @DnDParent : 02C2CAF0
	/// @DnDArgument : "steps_relative" "1"
	/// @DnDArgument : "steps_1" "5"
	/// @DnDArgument : "alarm_1" "6"
	alarm_set(0, 30 + alarm_get(0));
	alarm_set(6, 5);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DA97CA3
/// @DnDArgument : "var" "WhirlpowerTemp"
/// @DnDArgument : "op" "3"
if(WhirlpowerTemp <= 0){	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 34306CD1
	/// @DnDParent : 0DA97CA3
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 73377354
	/// @DnDParent : 0DA97CA3
	alarm_set(0, 30);}