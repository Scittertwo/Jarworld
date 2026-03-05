/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4CEE084D
/// @DnDInput : 7
/// @DnDArgument : "expr" "0.1"
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "var_1" "Rotation"
/// @DnDArgument : "var_2" "Speed"
/// @DnDArgument : "var_3" "tx"
/// @DnDArgument : "var_4" "ty"
/// @DnDArgument : "var_5" "Tick"
/// @DnDArgument : "var_6" "Decay"
Size = 0.1;
Rotation = 0;
Speed = 0;
tx = 0;
ty = 0;
Tick = 0;
Decay = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 14A28777
/// @DnDArgument : "var" "Decay"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "15"
/// @DnDArgument : "max" "120"
Decay = floor(random_range(15, 120 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2637DA68
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-80"
/// @DnDArgument : "max" "80"
Rotation = (random_range(-80, 80));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 365FBC02
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "1.5"
Tick = (random_range(0.5, 1.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 54652A56
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.4"
/// @DnDArgument : "max" "0.8"
Speed = (random_range(0.4, 0.8));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 54A0E854
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-45"
/// @DnDArgument : "max" "45"
tx = (random_range(-45, 45));

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 432D0E8A
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "45"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + 45);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 329AA1C0
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FD12261
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "op" "1"
if(tx < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 41F07F31
	/// @DnDParent : 3FD12261
	/// @DnDArgument : "spriteind" "FishCorpseLSprite"
	/// @DnDSaveInfo : "spriteind" "FishCorpseLSprite"
	sprite_index = FishCorpseLSprite;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2104E035
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "op" "2"
if(tx > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2A4778B4
	/// @DnDParent : 2104E035
	/// @DnDArgument : "spriteind" "FishCorpseRSprite"
	/// @DnDSaveInfo : "spriteind" "FishCorpseRSprite"
	sprite_index = FishCorpseRSprite;
	image_index = 0;}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3B2D37BC
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.3"
/// @DnDArgument : "max" "0.5"
Size = (random_range(0.3, 0.5));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 35F97C40
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 024E7CD8
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 475FD3C7
variable = (random_range(0, 1));