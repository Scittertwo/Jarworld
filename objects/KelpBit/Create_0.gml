/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F03FD4D
/// @DnDInput : 8
/// @DnDArgument : "expr_5" "0.025"
/// @DnDArgument : "var" "Decay"
/// @DnDArgument : "var_1" "Rotation"
/// @DnDArgument : "var_2" "Float"
/// @DnDArgument : "var_3" "Tick"
/// @DnDArgument : "var_4" "Speed"
/// @DnDArgument : "var_5" "Size"
/// @DnDArgument : "var_6" "tx"
/// @DnDArgument : "var_7" "ty"
Decay = 0;
Rotation = 0;
Float = 0;
Tick = 0;
Speed = 0;
Size = 0.025;
tx = 0;
ty = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0DD89381
/// @DnDArgument : "var" "PitchSet"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "3"
PitchSet = (random_range(0.1, 3));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3BA5C77B
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.3"
Size = (random_range(0.1, 0.3));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 39A6E19F
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
Speed = (random_range(0.1, 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 01CE05EE
/// @DnDArgument : "var" "Decay"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "15"
/// @DnDArgument : "max" "60"
Decay = floor(random_range(15, 60 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4C4E5AC8
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-80"
/// @DnDArgument : "max" "80"
Rotation = (random_range(-80, 80));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 37E35F10
/// @DnDArgument : "var" "Float"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "20"
Float = floor(random_range(1, 20 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 267EF5D9
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-45"
/// @DnDArgument : "max" "45"
tx = (random_range(-45, 45));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C4FC3AC
/// @DnDArgument : "expr" "-20"
/// @DnDArgument : "var" "ty"
ty = -20;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7B4FB0DB
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "2.5"
Tick = (random_range(0.5, 2.5));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3CBC57CD
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6FBF3B1C
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 2B864F7D
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2C9F9553
/// @DnDArgument : "soundid" "KelpBitSpawn"
/// @DnDArgument : "pitch" "PitchSet"
/// @DnDSaveInfo : "soundid" "KelpBitSpawn"
audio_play_sound(KelpBitSpawn, 0, 0, 1.0, undefined, PitchSet);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 33BB068E
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 09504A2E
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);