/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A567AB7
/// @DnDInput : 19
/// @DnDArgument : "expr_1" "0.01"
/// @DnDArgument : "expr_3" "10"
/// @DnDArgument : "expr_18" "10"
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "var_1" "Size"
/// @DnDArgument : "var_2" "Energy"
/// @DnDArgument : "var_3" "Health"
/// @DnDArgument : "var_4" "tx"
/// @DnDArgument : "var_5" "ty"
/// @DnDArgument : "var_6" "MaxSize"
/// @DnDArgument : "var_7" "Mature"
/// @DnDArgument : "var_8" "CanBreed"
/// @DnDArgument : "var_9" "Cooldown"
/// @DnDArgument : "var_10" "Speed"
/// @DnDArgument : "var_11" "Age"
/// @DnDArgument : "var_12" "Kelp"
/// @DnDArgument : "var_13" "OnFloor"
/// @DnDArgument : "var_14" "Tick"
/// @DnDArgument : "var_15" "Jump"
/// @DnDArgument : "var_16" "JumpDistance"
/// @DnDArgument : "var_17" "ReadyForKelp"
/// @DnDArgument : "var_18" "MaxHealth"
Speed = 0;
Size = 0.01;
Energy = 0;
Health = 10;
tx = 0;
ty = 0;
MaxSize = 0;
Mature = 0;
CanBreed = 0;
Cooldown = 0;
Speed = 0;
Age = 0;
Kelp = 0;
OnFloor = 0;
Tick = 0;
Jump = 0;
JumpDistance = 0;
ReadyForKelp = 0;
MaxHealth = 10;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 67E00C6C
/// @DnDArgument : "soundid" "CrabSound"
/// @DnDSaveInfo : "soundid" "CrabSound"
audio_play_sound(CrabSound, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2FA1A450
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "30"
/// @DnDArgument : "max" "60"
Energy = floor(random_range(30, 60 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2D3F8636
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.05"
/// @DnDArgument : "max" "0.1"
Size = (random_range(0.05, 0.1));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 1B074D0C
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6C76AE99
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "1.5"
Speed = (random_range(0.1, 1.5));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 33241845
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4999695F
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-45"
/// @DnDArgument : "max" "45"
tx = (random_range(-45, 45));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 711460CE
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-45"
/// @DnDArgument : "max" "45"
ty = (random_range(-45, 45));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 27DA52BB
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6EC1D4AE
/// @DnDArgument : "var" "MaxSize"
/// @DnDArgument : "min" "0.2"
/// @DnDArgument : "max" "0.5"
MaxSize = (random_range(0.2, 0.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 33AB464A
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2.5"
Tick = (random_range(1, 2.5));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1D528107
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);