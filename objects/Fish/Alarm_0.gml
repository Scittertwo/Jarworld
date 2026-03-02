/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 00742AFA
/// @DnDArgument : "var" "tx"
/// @DnDArgument : "min" "-100"
/// @DnDArgument : "max" "100"
tx = (random_range(-100, 100));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7D9256F2
/// @DnDArgument : "var" "ty"
/// @DnDArgument : "min" "-50"
/// @DnDArgument : "max" "100"
ty = (random_range(-50, 100));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 451B76AF
image_angle = 0;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1788C924
/// @DnDArgument : "x" "tx"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "ty"
/// @DnDArgument : "y_relative" "1"
direction = point_direction(x, y, x + tx, y + ty);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1F9DAE4F
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "1.3"
Speed = (random_range(0.1, 1.3));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 744D12C2
/// @DnDArgument : "speed" "Speed"
speed = Speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 659B74F5
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Energy"
Energy += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45615E4F
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "MaxSize/2"
if(Size < MaxSize/2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69532792
	/// @DnDParent : 45615E4F
	/// @DnDArgument : "expr" "0.02"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Size"
	Size += 0.02;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5BDBABFC
	/// @DnDParent : 45615E4F
	/// @DnDArgument : "xscale" "Size"
	/// @DnDArgument : "yscale" "Size"
	image_xscale = Size;image_yscale = Size;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FC21A9F
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "TargetEnergy"
if(Energy > TargetEnergy){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B5794A9
	/// @DnDParent : 1FC21A9F
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "CanBreed"
	CanBreed = 1;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 41539350
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 394D1680
	/// @DnDParent : 41539350
	/// @DnDArgument : "var" "CanBreed"
	CanBreed = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F6A0F2A
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "20"
if(Energy < 20){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 711B4404
	/// @DnDParent : 6F6A0F2A
	/// @DnDArgument : "colour" "$FF123960"
	image_blend = $FF123960 & $ffffff;
	image_alpha = ($FF123960 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 6E608221
	/// @DnDParent : 6F6A0F2A
	/// @DnDArgument : "var" "tytemp"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "100"
	/// @DnDArgument : "max" "170"
	tytemp = floor(random_range(100, 170 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60A4CDFD
	/// @DnDParent : 6F6A0F2A
	/// @DnDArgument : "expr" "tytemp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ty"
	ty += tytemp;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2EAB5AF2
/// @DnDArgument : "var" "Energy"
/// @DnDArgument : "op" "3"
if(Energy <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 39D0B5F2
	/// @DnDParent : 2EAB5AF2
	/// @DnDArgument : "steps" "1"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 1);}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 096D910B
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "2.5"
Tick = (random_range(0.5, 2.5));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6C59A8EC
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);