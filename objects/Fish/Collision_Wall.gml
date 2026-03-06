/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36EDA4F2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "BumpCount"
BumpCount += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56D277DF
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "7"
if(Speed > 7){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 3861DEBC
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "var" "BubbleCount"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "5"
	BubbleCount = floor(random_range(1, 5 + 1));

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
		/// @DnDArgument : "objectid" "CosmeticBubbleSpawn"
		/// @DnDSaveInfo : "objectid" "CosmeticBubbleSpawn"
		instance_create_layer(x + 0, y + 0, "Instances", CosmeticBubbleSpawn);}

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 17425D56
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "var" "PitchSet"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "5"
	PitchSet = floor(random_range(1, 5 + 1));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0C5E1B3D
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "soundid" "FlishSlap"
	/// @DnDArgument : "gain" "2.0"
	/// @DnDArgument : "pitch" "PitchSet"
	/// @DnDSaveInfo : "soundid" "FlishSlap"
	audio_play_sound(FlishSlap, 0, 0, 2.0, undefined, PitchSet);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 645C72FE
	/// @DnDParent : 56D277DF
	/// @DnDArgument : "steps" "5"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 5);}

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 17338700
direction = (direction + 180) % 360;