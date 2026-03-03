/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4188D268
image_angle = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57180509
/// @DnDArgument : "var" "Decay"
/// @DnDArgument : "op" "3"
if(Decay <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3168BD9D
	/// @DnDParent : 57180509
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1E71207C
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38917B65
	/// @DnDParent : 1E71207C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "Decay"
	Decay = -1;}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4A917DE5
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-45"
/// @DnDArgument : "max" "45"
tx = (random_range(-45, 45));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 14AD24B9
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "45"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + 45);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1A1358AE
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.4"
Speed = (random_range(0.1, 0.4));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 668390C7
/// @DnDArgument : "speed" "Speed"
speed = Speed;