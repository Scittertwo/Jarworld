/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 538B9A66
/// @DnDInput : 10
/// @DnDArgument : "expr" "0.1"
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "var_1" "Speed"
/// @DnDArgument : "var_2" "Rotation"
/// @DnDArgument : "var_3" "Health"
/// @DnDArgument : "var_4" "Energy"
/// @DnDArgument : "var_5" "Infected"
/// @DnDArgument : "var_6" "InfectionLevel"
/// @DnDArgument : "var_7" "Rev"
/// @DnDArgument : "var_8" "Stasis"
/// @DnDArgument : "var_9" "Control"
Size = 0.1;
Speed = 0;
Rotation = 0;
Health = 0;
Energy = 0;
Infected = 0;
InfectionLevel = 0;
Rev = 0;
Stasis = 0;
Control = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5C6C3F57
/// @DnDArgument : "spriteind" "TardigradeSprite"
/// @DnDSaveInfo : "spriteind" "TardigradeSprite"
sprite_index = TardigradeSprite;
image_index = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 227B0BE8
/// @DnDArgument : "var" "TargetSize"
/// @DnDArgument : "min" "0.3"
/// @DnDArgument : "max" "0.7"
TargetSize = (random_range(0.3, 0.7));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 055CB9D5
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.05"
Speed = (random_range(0.05, 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3D2CD7AF
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 33E50EB4
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "70"
/// @DnDArgument : "max" "150"
Energy = floor(random_range(70, 150 + 1));

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6FBB3405
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1DD59E43
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "200"
Health = floor(random_range(100, 200 + 1));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 579F464A
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 4B66754A
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3EA1C3ED
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6DCDCBC2
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 6E7030E6
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 58A862D0
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 780566B9
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);