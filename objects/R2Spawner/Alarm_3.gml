/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 50A70740
/// @DnDArgument : "var" "DirUpTemp"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2"
DirUpTemp = floor(random_range(1, 2 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 48CC0C29
/// @DnDArgument : "var" "DirUpTemp"
/// @DnDArgument : "value" "1"
if(DirUpTemp == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 47F906F2
	/// @DnDParent : 48CC0C29
	/// @DnDArgument : "var" "CosmeticBubbleDirTemp"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-50"
	/// @DnDArgument : "max" "50"
	CosmeticBubbleDirTemp = floor(random_range(-50, 50 + 1));}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 59EC63EC
else{	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7D26D6C8
	/// @DnDParent : 59EC63EC
	/// @DnDArgument : "var" "CosmeticBubbleDirTemp"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-10"
	/// @DnDArgument : "max" "10"
	CosmeticBubbleDirTemp = floor(random_range(-10, 10 + 1));}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5223F38C
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "120"
/// @DnDArgument : "max" "760"
Tick = (random_range(120, 760));

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4E2EC23D
/// @DnDArgument : "value" "CosmeticBubbleDirTemp"
/// @DnDArgument : "var" "CosmeticBubbleDir"
global.CosmeticBubbleDir = CosmeticBubbleDirTemp;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 05E13A16
/// @DnDArgument : "steps" "Tick"
/// @DnDArgument : "alarm" "3"
alarm_set(3, Tick);