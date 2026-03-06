/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0E0318BC
/// @DnDArgument : "var" "PitchSet"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "1.5"
PitchSet = (random_range(0.1, 1.5));

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4D330D61
/// @DnDArgument : "soundid" "Whirl"
/// @DnDArgument : "pitch" "PitchSet"
/// @DnDSaveInfo : "soundid" "Whirl"
audio_play_sound(Whirl, 0, 0, 1.0, undefined, PitchSet);