/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 256F112C
/// @DnDInput : 2
/// @DnDArgument : "output" "SizeTemp"
/// @DnDArgument : "output_1" "Power"
/// @DnDArgument : "var" "global.SuperWhirlSize"
/// @DnDArgument : "var_1" "global.SuperWhirlPower"
SizeTemp = global.SuperWhirlSize;
Power = global.SuperWhirlPower;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 435FD373
/// @DnDInput : 10
/// @DnDArgument : "expr_5" "2"
/// @DnDArgument : "expr_6" "40"
/// @DnDArgument : "expr_7" "5"
/// @DnDArgument : "expr_8" "1"
/// @DnDArgument : "expr_9" "3"
/// @DnDArgument : "var" "Life"
/// @DnDArgument : "var_1" "Speed"
/// @DnDArgument : "var_2" "Rotation"
/// @DnDArgument : "var_3" "Tick"
/// @DnDArgument : "var_4" "Rev"
/// @DnDArgument : "var_5" "MaxSize"
/// @DnDArgument : "var_6" "MaxPower"
/// @DnDArgument : "var_7" "MaxSpeed"
/// @DnDArgument : "var_8" "Size"
/// @DnDArgument : "var_9" "BubbleCount"
Life = 0;
Speed = 0;
Rotation = 0;
Tick = 0;
Rev = 0;
MaxSize = 2;
MaxPower = 40;
MaxSpeed = 5;
Size = 1;
BubbleCount = 3;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 24D53EBA
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0C7D8A25
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "60"
Tick = (random_range(1, 60));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 021C7772
/// @DnDArgument : "var" "Life"
/// @DnDArgument : "min" "180"
/// @DnDArgument : "max" "1200"
Life = (random_range(180, 1200));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 460F52F9
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "3"
Speed = (random_range(0.1, 3));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7B8F2383
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3AD00C2D
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 02A6D4E1
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 67D10F76
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0F3F3CA2
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 693E788E
/// @DnDArgument : "value" "Power"
/// @DnDArgument : "var" "WhirlPower"
global.WhirlPower = Power;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 418C5C32
/// @DnDInput : 3
/// @DnDArgument : "steps" "Life"
/// @DnDArgument : "steps_1" "Tick"
/// @DnDArgument : "steps_2" "1"
/// @DnDArgument : "alarm" "11"
/// @DnDArgument : "alarm_2" "4"
alarm_set(11, Life);
alarm_set(0, Tick);
alarm_set(4, 1);