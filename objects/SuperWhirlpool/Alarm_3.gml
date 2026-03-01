/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A5283AF
/// @DnDArgument : "var" "BubbleSpeedTemp"
BubbleSpeedTemp = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 10F66A0C
/// @DnDArgument : "var" "BubbleSpeedTemp"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "2"
BubbleSpeedTemp = (random_range(0.5, 2));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1B0A2B85
/// @DnDArgument : "value" "BubbleSpeedTemp"
/// @DnDArgument : "var" "BubbleSpeed"
global.BubbleSpeed = BubbleSpeedTemp;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 6E6F6E27
/// @DnDArgument : "times" "BubbleCount"
repeat(BubbleCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 061136CE
	/// @DnDParent : 6E6F6E27
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "BubbleSpawn"
	/// @DnDSaveInfo : "objectid" "BubbleSpawn"
	instance_create_layer(x + 0, y + 0, "Instances", BubbleSpawn);}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4868E21C
instance_destroy();