/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F5273EA
/// @DnDInput : 11
/// @DnDArgument : "expr_10" "0.2"
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "var_1" "Speed"
/// @DnDArgument : "var_2" "Far"
/// @DnDArgument : "var_3" "Tick"
/// @DnDArgument : "var_4" "Growth"
/// @DnDArgument : "var_5" "TargetGrowth"
/// @DnDArgument : "var_6" "Size"
/// @DnDArgument : "var_7" "Planted"
/// @DnDArgument : "var_8" "tx"
/// @DnDArgument : "var_9" "ty"
/// @DnDArgument : "var_10" "MaxSize"
Rotation = 0;
Speed = 0;
Far = 0;
Tick = 0;
Growth = 0;
TargetGrowth = 0;
Size = 0;
Planted = 0;
tx = 0;
ty = 0;
MaxSize = 0.2;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1C73EBB6
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "min" "-360"
/// @DnDArgument : "max" "360"
Rotation = (random_range(-360, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5B59DA1F
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.03"
/// @DnDArgument : "max" "0.07"
Size = (random_range(0.03, 0.07));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3E544B15
/// @DnDArgument : "var" "Far"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "10"
Far = floor(random_range(1, 10 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2D37792B
/// @DnDArgument : "var" "TargetGrowth"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "5"
/// @DnDArgument : "max" "15"
TargetGrowth = floor(random_range(5, 15 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 5C4B3AEE
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-80"
/// @DnDArgument : "max" "80"
tx = (random_range(-80, 80));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5FAF9D1C
/// @DnDArgument : "var" "Far"
/// @DnDArgument : "value" "1"
if(Far == 1){	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 461B4FD7
	/// @DnDParent : 5FAF9D1C
	/// @DnDArgument : "var" "Tick"
	/// @DnDArgument : "min" "3.5"
	/// @DnDArgument : "max" "7"
	Tick = (random_range(3.5, 7));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 69A91629
	/// @DnDParent : 5FAF9D1C
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "2"
	/// @DnDArgument : "max" "6"
	Speed = (random_range(2, 6));

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 08C5ABB0
	/// @DnDParent : 5FAF9D1C
	/// @DnDArgument : "steps" "Tick*60"
	/// @DnDArgument : "alarm" "9"
	alarm_set(9, Tick*60);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 050EBBCE
else{	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 02C89662
	/// @DnDParent : 050EBBCE
	/// @DnDArgument : "var" "Tick"
	/// @DnDArgument : "min" "2"
	/// @DnDArgument : "max" "4"
	Tick = (random_range(2, 4));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6549C139
	/// @DnDParent : 050EBBCE
	/// @DnDArgument : "var" "Speed"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "3"
	Speed = (random_range(1, 3));

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0F293FA0
	/// @DnDParent : 050EBBCE
	/// @DnDArgument : "steps" "Tick*60"
	/// @DnDArgument : "alarm" "9"
	alarm_set(9, Tick*60);}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 31B2E220
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-50"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + -50);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 415773B8
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 41450ED1
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 05300E59
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;