/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 186B27AB
/// @DnDArgument : "var" "GrowthTemp"
/// @DnDArgument : "type" "1"
GrowthTemp = floor(random_range(0, 1 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4A540D40
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "45"
/// @DnDArgument : "max" "60"
Tick = (random_range(45, 60));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D19BB19
/// @DnDArgument : "expr" "GrowthTemp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Growth"
Growth += GrowthTemp;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 04ACE69B
/// @DnDArgument : "xscale" "0.005"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.005"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.005;image_yscale += 0.005;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D01F42E
/// @DnDArgument : "var" "Growth"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "GrowthTarget"
if(Growth >= GrowthTarget){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 16B6FB2E
	/// @DnDParent : 0D01F42E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Seaweed"
	/// @DnDSaveInfo : "objectid" "Seaweed"
	instance_create_layer(x + 0, y + 0, "Instances", Seaweed);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5C7D955F
	/// @DnDParent : 0D01F42E
	instance_destroy();}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0C3C7C74
/// @DnDArgument : "steps" "Tick"
alarm_set(0, Tick);