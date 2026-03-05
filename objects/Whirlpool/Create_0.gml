/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 435FD373
/// @DnDInput : 8
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "var_1" "Power"
/// @DnDArgument : "var_2" "Life"
/// @DnDArgument : "var_3" "Speed"
/// @DnDArgument : "var_4" "Rotation"
/// @DnDArgument : "var_5" "Tick"
/// @DnDArgument : "var_6" "Rev"
/// @DnDArgument : "var_7" "TardSpawn"
Size = 0;
Power = 0;
Life = 0;
Speed = 0;
Rotation = 0;
Tick = 0;
Rev = 0;
TardSpawn = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 60142A49
/// @DnDArgument : "var" "TardSpawn"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "50"
TardSpawn = floor(random_range(1, 50 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 24D53EBA
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0C7D8A25
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "60"
Tick = (random_range(1, 60));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4ED96B99
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.2"
/// @DnDArgument : "max" "0.7"
Size = (random_range(0.2, 0.7));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 19FC94FA
/// @DnDArgument : "var" "Power"
/// @DnDArgument : "min" "3"
/// @DnDArgument : "max" "15"
Power = (random_range(3, 15));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 021C7772
/// @DnDArgument : "var" "Life"
/// @DnDArgument : "min" "420"
/// @DnDArgument : "max" "1600"
Life = (random_range(420, 1600));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 460F52F9
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "3"
Speed = (random_range(0.1, 3));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7B8F2383
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
tx = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3AD00C2D
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-1000"
/// @DnDArgument : "max" "1000"
ty = (random_range(-1000, 1000));

/// @DnDAction : YoYo Games.Rooms.If_First_Room
/// @DnDVersion : 1
/// @DnDHash : 1D752C01
/// @DnDArgument : "not" "1"
if(room != room_first){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FD0CFFE
	/// @DnDParent : 1D752C01
	/// @DnDArgument : "expr" "Size/2"
	/// @DnDArgument : "var" "Size"
	Size = Size/2;}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 02A6D4E1
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 090B6CC7
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 67D10F76
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0F3F3CA2
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 418C5C32
/// @DnDInput : 2
/// @DnDArgument : "steps" "Life"
/// @DnDArgument : "steps_1" "Tick"
/// @DnDArgument : "alarm" "11"
alarm_set(11, Life);
alarm_set(0, Tick);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 693E788E
/// @DnDArgument : "value" "Power"
/// @DnDArgument : "var" "WhirlPower"
global.WhirlPower = Power;