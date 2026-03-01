/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7479E51D
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5948AA93
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "EatAmount"
EatAmount += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 559F7829
/// @DnDArgument : "var" "Control"
if(Control == 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48005582
	/// @DnDParent : 559F7829
	/// @DnDArgument : "var" "EatAmount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "3"
	if(EatAmount >= 3){	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3F0BD751
		/// @DnDParent : 48005582
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		direction = point_direction(x, y, x + 0, y + 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 456465F1
		/// @DnDParent : 48005582
		/// @DnDArgument : "var" "Speed"
		Speed = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 5FE620F1
		/// @DnDParent : 48005582
		/// @DnDArgument : "speed" "Speed"
		speed = Speed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7E6D039B
		/// @DnDInput : 2
		/// @DnDParent : 48005582
		/// @DnDArgument : "steps" "120"
		/// @DnDArgument : "steps_1" "120"
		/// @DnDArgument : "steps_relative_1" "1"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 120);
		alarm_set(0, 120 + alarm_get(0));}}