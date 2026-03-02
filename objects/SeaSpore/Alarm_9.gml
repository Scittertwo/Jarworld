/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A52CD94
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "2"
if(Speed > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44AA6969
	/// @DnDParent : 4A52CD94
	/// @DnDArgument : "expr" "-0.05"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Speed"
	Speed += -0.05;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 338A9CF6
	/// @DnDParent : 4A52CD94
	/// @DnDArgument : "x" "tx"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "50"
	/// @DnDArgument : "y_relative" "1"
	direction = point_direction(x, y, x + tx, y + 50);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6826D6D8
	/// @DnDParent : 4A52CD94
	/// @DnDArgument : "speed" "Speed"
	speed = Speed;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 253BCB84
	/// @DnDParent : 4A52CD94
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "9"
	alarm_set(9, 15);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4356CCDD
	/// @DnDParent : 4A52CD94
	/// @DnDArgument : "steps" "20"
	/// @DnDArgument : "steps_relative" "1"
	alarm_set(0, 20 + alarm_get(0));}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 46ACA366
else{	/// @DnDAction : YoYo Games.Instances.Get_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 03A40169
	/// @DnDParent : 46ACA366
	/// @DnDArgument : "var" "Ztemp"
	Ztemp = alarm_get(0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21895571
	/// @DnDParent : 46ACA366
	/// @DnDArgument : "var" "Ztemp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "181"
	if(Ztemp > 181){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 08E51953
		/// @DnDParent : 21895571
		/// @DnDArgument : "steps" "181"
		alarm_set(0, 181);}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5CD2C676
	/// @DnDParent : 46ACA366
	/// @DnDArgument : "steps" "200"
	/// @DnDArgument : "alarm" "9"
	alarm_set(9, 200);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09D0FDC3
	/// @DnDParent : 46ACA366
	/// @DnDArgument : "var" "Speed"
	Speed = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1DEE4EA4
	/// @DnDParent : 46ACA366
	/// @DnDArgument : "speed" "Speed"
	speed = Speed;}