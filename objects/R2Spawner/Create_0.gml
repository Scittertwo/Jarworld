/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D730869
/// @DnDInput : 7
/// @DnDArgument : "expr_3" "100"
/// @DnDArgument : "expr_4" "150"
/// @DnDArgument : "expr_5" "15"
/// @DnDArgument : "expr_6" "3"
/// @DnDArgument : "var" "Rev"
/// @DnDArgument : "var_1" "WhirlSpawn"
/// @DnDArgument : "var_2" "Cooldown"
/// @DnDArgument : "var_3" "MinCosmeticBubbles"
/// @DnDArgument : "var_4" "MaxCosmeticBubbles"
/// @DnDArgument : "var_5" "CosBubSpawnTime"
/// @DnDArgument : "var_6" "Cooldown"
Rev = 0;
WhirlSpawn = 0;
Cooldown = 0;
MinCosmeticBubbles = 100;
MaxCosmeticBubbles = 150;
CosBubSpawnTime = 15;
Cooldown = 3;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6A446D5F
/// @DnDInput : 2
/// @DnDArgument : "value" "MinCosmeticBubbles"
/// @DnDArgument : "value_1" "MaxCosmeticBubbles"
/// @DnDArgument : "var" "MinCosBubs"
/// @DnDArgument : "var_1" "MaxCosBubs"
global.MinCosBubs = MinCosmeticBubbles;
global.MaxCosBubs = MaxCosmeticBubbles;

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 085EEF02
randomize();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4FE58C4D
/// @DnDInput : 3
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "steps_1" "1"
/// @DnDArgument : "steps_2" "1"
/// @DnDArgument : "alarm_1" "1"
/// @DnDArgument : "alarm_2" "3"
alarm_set(0, 1);
alarm_set(1, 1);
alarm_set(3, 1);

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 57BE7D2B
/// @DnDArgument : "xscale" "0.1"
/// @DnDArgument : "yscale" "0.1"
image_xscale = 0.1;image_yscale = 0.1;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 194966C1
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "BubbleSpeed"
global.BubbleSpeed = 1;