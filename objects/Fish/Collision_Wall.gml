/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36EDA4F2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "BumpCount"
BumpCount += 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 34197237
/// @DnDArgument : "steps_relative" "1"
alarm_set(0, 30 + alarm_get(0));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56D277DF
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "5"
if(Speed > 5){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3861DEBC
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "var" "BubbleCount"
	/// @DnDArgument : "min" "5"
	/// @DnDArgument : "max" "10"
	BubbleCount = (random_range(5, 10));

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 39A67DC4
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "times" "BubbleCount"
	repeat(BubbleCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 47601632
		/// @DnDParent : 39A67DC4
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "CosmeticBubble"
		/// @DnDSaveInfo : "objectid" "CosmeticBubble"
		instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubble);}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 645C72FE
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 15);}

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 17338700
direction = (direction + 180) % 360;