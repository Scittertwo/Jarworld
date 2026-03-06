/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0B5605AB
/// @DnDArgument : "var" "Distance"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "15"
/// @DnDArgument : "max" "120"
Distance = floor(random_range(15, 120 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4333D243
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-600"
/// @DnDArgument : "max" "600"
tx = (random_range(-600, 600));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0E5B43E2
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-600"
/// @DnDArgument : "max" "600"
ty = (random_range(-600, 600));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7F1146D2
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "1.5"
Speed = (random_range(1, 1.5));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 67CDEB2E
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1AE50679
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 61D0FC98
/// @DnDArgument : "var" "cy"
/// @DnDArgument : "op" "2"
if(cy > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7644D010
	/// @DnDParent : 61D0FC98
	/// @DnDArgument : "var" "cy"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "766"
	if(cy < 766){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2F926A7F
		/// @DnDParent : 7644D010
		/// @DnDArgument : "soundid" "bubble"
		/// @DnDArgument : "pitch" "PitchSet"
		/// @DnDSaveInfo : "soundid" "bubble"
		audio_play_sound(bubble, 0, 0, 1.0, undefined, PitchSet);}}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1BFBD6CE
/// @DnDArgument : "steps" "Distance"
/// @DnDArgument : "alarm" "1"
alarm_set(1, Distance);