/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2815A504
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "2"
if(Speed > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 710667F9
	/// @DnDParent : 2815A504
	/// @DnDArgument : "expr" "-0.05"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Speed"
	Speed += -0.05;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7A4F9400
	/// @DnDParent : 2815A504
	/// @DnDArgument : "speed" "Speed"
	speed = Speed;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 653047DF
	/// @DnDInput : 2
	/// @DnDParent : 2815A504
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "steps_1" "20"
	/// @DnDArgument : "steps_relative_1" "1"
	/// @DnDArgument : "alarm" "6"
	alarm_set(6, 15);
	alarm_set(0, 20 + alarm_get(0));}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7EFED173
else{	/// @DnDAction : YoYo Games.Instances.Get_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 70CA9BB1
	/// @DnDParent : 7EFED173
	/// @DnDArgument : "var" "ZTemp"
	ZTemp = alarm_get(0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B59ACF3
	/// @DnDParent : 7EFED173
	/// @DnDArgument : "var" "ZTemp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "181"
	if(ZTemp > 181){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 2ACA4E96
		/// @DnDParent : 5B59ACF3
		/// @DnDArgument : "steps" "181"
		alarm_set(0, 181);}}