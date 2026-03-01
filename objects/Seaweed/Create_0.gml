/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7AA2E037
/// @DnDInput : 8
/// @DnDArgument : "expr_3" "0.01"
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "var_1" "Energy"
/// @DnDArgument : "var_2" "TargetEnergy"
/// @DnDArgument : "var_3" "Size"
/// @DnDArgument : "var_4" "Speed"
/// @DnDArgument : "var_5" "Tick"
/// @DnDArgument : "var_6" "Planted"
/// @DnDArgument : "var_7" "TargetSize"
Health = 0;
Energy = 0;
TargetEnergy = 0;
Size = 0.01;
Speed = 0;
Tick = 0;
Planted = 0;
TargetSize = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 634B5A1C
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "S"
image_xscale = Size;image_yscale = S;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 38507182
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "3"
Tick = floor(random_range(0.5, 3 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6EBB41CE
/// @DnDArgument : "var" "TargetSize"
/// @DnDArgument : "min" "0.05"
/// @DnDArgument : "max" "0.1"
TargetSize = (random_range(0.05, 0.1));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 33412FA0
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);