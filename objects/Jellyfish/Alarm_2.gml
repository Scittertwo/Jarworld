/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 75B51F2E
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
Tick = (random_range(0.5, 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2FC41AD1
/// @DnDArgument : "var" "SpeedY"
/// @DnDArgument : "min" "0.3"
/// @DnDArgument : "max" "0.6"
SpeedY = (random_range(0.3, 0.6));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 23C76EC0
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-20"
/// @DnDArgument : "max" "20"
tx = floor(random_range(-20, 20 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 68679E43
/// @DnDArgument : "expr" "20"
/// @DnDArgument : "var" "ty"
ty = 20;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 606142B5
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4FC6ADD0
/// @DnDArgument : "speed" "SpeedY"
speed = SpeedY;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 53FA8B1F
/// @DnDArgument : "steps" "Tick*60"
/// @DnDArgument : "alarm" "1"
alarm_set(1, Tick*60);