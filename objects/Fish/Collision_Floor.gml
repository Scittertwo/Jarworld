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
/// @DnDHash : 5E7EB1BF
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "7"
if(Speed > 7){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7136B5E3
	/// @DnDParent : 5E7EB1BF
	/// @DnDArgument : "var" "BubbleCount"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "10"
	/// @DnDArgument : "max" "15"
	BubbleCount = floor(random_range(10, 15 + 1));

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 28C383D5
	/// @DnDParent : 5E7EB1BF
	/// @DnDArgument : "times" "BubbleCount"
	repeat(BubbleCount){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 59953807
		/// @DnDParent : 28C383D5
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
		/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
		instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubbleSpawn);}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6F4BE8D2
	/// @DnDParent : 5E7EB1BF
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 15);}

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 17338700
direction = (direction + 180) % 360;