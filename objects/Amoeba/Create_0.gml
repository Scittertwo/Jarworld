/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 538B9A66
/// @DnDInput : 9
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "var_1" "Speed"
/// @DnDArgument : "var_2" "Rotation"
/// @DnDArgument : "var_3" "Health"
/// @DnDArgument : "var_4" "Energy"
/// @DnDArgument : "var_5" "Infected"
/// @DnDArgument : "var_6" "InfectionLevel"
/// @DnDArgument : "var_7" "Rev"
/// @DnDArgument : "var_8" "Control"
Size = 0;
Speed = 0;
Rotation = 0;
Health = 0;
Energy = 0;
Infected = 0;
InfectionLevel = 0;
Rev = 0;
Control = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 227B0BE8
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.3"
Size = (random_range(0.1, 0.3));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 055CB9D5
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.05"
/// @DnDArgument : "max" "0.5"
Speed = (random_range(0.05, 0.5));

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
/// @DnDArgument : "min" "50"
/// @DnDArgument : "max" "70"
Energy = floor(random_range(50, 70 + 1));

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
/// @DnDArgument : "min" "20"
/// @DnDArgument : "max" "50"
Health = floor(random_range(20, 50 + 1));

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

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 29293F2B
/// @DnDArgument : "direction" "135,90,45,180,0,225,270,315"
direction = choose(135,90,45,180,0,225,270,315);

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