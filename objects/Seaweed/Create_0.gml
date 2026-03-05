/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7AA2E037
/// @DnDInput : 11
/// @DnDArgument : "expr_3" "0.1"
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "var_1" "Energy"
/// @DnDArgument : "var_2" "TargetEnergy"
/// @DnDArgument : "var_3" "Size"
/// @DnDArgument : "var_4" "Speed"
/// @DnDArgument : "var_5" "Tick"
/// @DnDArgument : "var_6" "Planted"
/// @DnDArgument : "var_7" "TargetSize"
/// @DnDArgument : "var_8" "Rev"
/// @DnDArgument : "var_9" "SeaweedN"
/// @DnDArgument : "var_10" "Rotation"
Health = 0;
Energy = 0;
TargetEnergy = 0;
Size = 0.1;
Speed = 0;
Tick = 0;
Planted = 0;
TargetSize = 0;
Rev = 0;
SeaweedN = 0;
Rotation = 0;

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 19FF3A95
/// @DnDArgument : "var" "SeaweedN"
/// @DnDArgument : "object" "Seaweed"
/// @DnDSaveInfo : "object" "Seaweed"
SeaweedN = instance_number(Seaweed);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 38507182
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "0.5"
/// @DnDArgument : "max" "3"
Tick = (random_range(0.5, 3));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 6EBB41CE
/// @DnDArgument : "var" "TargetSize"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.5"
TargetSize = (random_range(0.1, 0.5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 00A4B646
/// @DnDArgument : "var" "Size"
/// @DnDArgument : "min" "0.05"
/// @DnDArgument : "max" "0.075"
Size = (random_range(0.05, 0.075));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2E6C7057
/// @DnDArgument : "var" "Rotation"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "-120"
/// @DnDArgument : "max" "120"
Rotation = floor(random_range(-120, 120 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 48C2F22B
/// @DnDArgument : "var" "Health"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "200"
/// @DnDArgument : "max" "400"
Health = floor(random_range(200, 400 + 1));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3DBDA624
/// @DnDArgument : "var" "SeaweedN"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "2"
if(SeaweedN < 2){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CFB8D3D
	/// @DnDParent : 3DBDA624
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "TargetEnergy"
	TargetEnergy = 3;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 14411BD3
else{	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 35190556
	/// @DnDParent : 14411BD3
	/// @DnDArgument : "var" "TargetEnergy"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "20"
	/// @DnDArgument : "max" "40"
	TargetEnergy = floor(random_range(20, 40 + 1));}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6CE78D5E
/// @DnDArgument : "spriteind" "SeaweedSprite"
/// @DnDSaveInfo : "spriteind" "SeaweedSprite"
sprite_index = SeaweedSprite;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5D0FD577
/// @DnDArgument : "angle" "Rotation"
image_angle = Rotation;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 1B25E9E0
image_speed = 1;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 634B5A1C
/// @DnDArgument : "xscale" "Size"
/// @DnDArgument : "yscale" "Size"
image_xscale = Size;image_yscale = Size;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 10460DEB
/// @DnDArgument : "var" "Speed"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.6"
Speed = (random_range(0.1, 0.6));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 33412FA0
/// @DnDInput : 2
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "steps_1" "60"
/// @DnDArgument : "alarm_1" "10"
alarm_set(0, 1);
alarm_set(10, 60);