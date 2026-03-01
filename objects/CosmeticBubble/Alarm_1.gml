/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 083E1177
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.2"
/// @DnDArgument : "max" "0.5"
Speed = (random_range(0.2, 0.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 189CD7C5
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.02"
/// @DnDArgument : "max" "0.1"
Size = (random_range(0.02, 0.1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 79460699
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 5F9CFC08
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7989D186
/// @DnDArgument : "speed" "Speed"
speed = Speed;