/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D45E4FE
/// @DnDInput : 14
/// @DnDArgument : "expr_2" "100"
/// @DnDArgument : "expr_6" "0.1"
/// @DnDArgument : "expr_12" "3"
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "var_1" "Energy"
/// @DnDArgument : "var_2" "Health"
/// @DnDArgument : "var_3" "tx"
/// @DnDArgument : "var_4" "ty"
/// @DnDArgument : "var_5" "Tick"
/// @DnDArgument : "var_6" "Size"
/// @DnDArgument : "var_7" "MaxSize"
/// @DnDArgument : "var_8" "TargetEnergy"
/// @DnDArgument : "var_9" "CanBreed"
/// @DnDArgument : "var_10" "CanHeal"
/// @DnDArgument : "var_11" "Control"
/// @DnDArgument : "var_12" "SpriteOptions"
/// @DnDArgument : "var_13" "BumpCount"
Speed = 0;
Energy = 0;
Health = 100;
tx = 0;
ty = 0;
Tick = 0;
Size = 0.1;
MaxSize = 0;
TargetEnergy = 0;
CanBreed = 0;
CanHeal = 0;
Control = 0;
SpriteOptions = 3;
BumpCount = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 39D4B8E8
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.05"
/// @DnDArgument : "max" "0.075"
Size = (random_range(0.05, 0.075));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 0D3580A0
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 68D9524E
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
Speed = (random_range(0.1, 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 517BF264
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "40"
/// @DnDArgument : "max" "80"
Energy = floor(random_range(40, 80 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 49A92D1B
/// @DnDArgument : "var" "TargetEnergy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "150"
TargetEnergy = floor(random_range(100, 150 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 25D8012B
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-100"
/// @DnDArgument : "max" "100"
tx = (random_range(-100, 100));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 27684907
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-100"
/// @DnDArgument : "max" "100"
ty = (random_range(-100, 100));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 7A468A9D
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3750513D
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 10C4221B
/// @DnDArgument : "var" "MaxSize"
/// @DnDArgument : "min" "0.3"
MaxSize = (random_range(0.3, 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 521841C4
/// @DnDArgument : "var" "SpriteChoice"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "SpriteOptions"
SpriteChoice = floor(random_range(1, SpriteOptions + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 010FCC59
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "2"
Tick = (random_range(0.5, 2));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 28A7D401
/// @DnDArgument : "steps" "1"
alarm_set(0, 1);