/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09CFA2CC
/// @DnDArgument : "var" "Growth"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "TargetGrowth"
if(Growth < TargetGrowth){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B3580A7
	/// @DnDParent : 09CFA2CC
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Growth"
	Growth += 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BB86CFC
	/// @DnDParent : 09CFA2CC
	/// @DnDArgument : "var" "Size"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "MaxSize"
	if(Size < MaxSize){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 457C2277
		/// @DnDParent : 2BB86CFC
		/// @DnDArgument : "expr" "0.01"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "Size"
		Size += 0.01;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 712C74BF
		/// @DnDParent : 2BB86CFC
		/// @DnDArgument : "xscale" "0.01"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "0.01"
		/// @DnDArgument : "yscale_relative" "1"
		image_xscale += 0.01;image_yscale += 0.01;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6518F8C0
else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BDA03FF
	/// @DnDParent : 6518F8C0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-25"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Seaweed"
	/// @DnDSaveInfo : "objectid" "Seaweed"
	instance_create_layer(x + 0, y + -25, "Instances", Seaweed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 608137F2
	/// @DnDParent : 6518F8C0
	/// @DnDArgument : "var" "Growth"
	Growth = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 132F2F9B
	/// @DnDParent : 6518F8C0
	instance_destroy();}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 205E64F9
/// @DnDArgument : "var" "Tick"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "2"
Tick = (random_range(1, 2));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 45731C31
/// @DnDArgument : "steps" "Tick*60"
alarm_set(0, Tick*60);