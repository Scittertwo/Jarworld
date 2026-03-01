/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C0B75EF
/// @DnDInput : 7
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "var_1" "Size"
/// @DnDArgument : "var_2" "Speed"
/// @DnDArgument : "var_3" "Health"
/// @DnDArgument : "var_4" "TargetEnergy"
/// @DnDArgument : "var_5" "Rotation"
/// @DnDArgument : "var_6" "Rev"
Energy = 0;
Size = 0;
Speed = 0;
Health = 0;
TargetEnergy = 0;
Rotation = 0;
Rev = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2840BAAE
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "20"
Energy = floor(random_range(0, 20 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1A978BB1
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "100"
/// @DnDArgument : "max" "200"
Health = floor(random_range(100, 200 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 07BCB88C
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.03"
/// @DnDArgument : "max" "0.15"
Size = (random_range(0.03, 0.15));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 608507B0
/// @DnDArgument : "var" "TargetEnergy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "20"
/// @DnDArgument : "max" "30"
TargetEnergy = floor(random_range(20, 30 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3005C5F1
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 5DD72792
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 39195BA4
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3E29B589
/// @DnDInput : 2
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "steps_1" "15"
/// @DnDArgument : "alarm_1" "1"
alarm_set(0, 60);
alarm_set(1, 15);