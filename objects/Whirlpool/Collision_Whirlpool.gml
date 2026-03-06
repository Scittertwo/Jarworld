/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7B59D153
/// @DnDArgument : "steps" "1"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 1);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 174C7342
/// @DnDInput : 2
/// @DnDArgument : "value" "Size*1.25"
/// @DnDArgument : "value_1" "Power*2"
/// @DnDArgument : "var" "SuperWhirlSize"
/// @DnDArgument : "var_1" "SuperWhirlPower"
global.SuperWhirlSize = Size*1.25;
global.SuperWhirlPower = Power*2;

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 70276911
/// @DnDArgument : "var" "SuperWhirlCount"
/// @DnDArgument : "object" "SuperWhirlpool"
/// @DnDSaveInfo : "object" "SuperWhirlpool"
SuperWhirlCount = instance_number(SuperWhirlpool);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D6396D0
/// @DnDArgument : "var" "SuperWhirlCount"
/// @DnDArgument : "op" "3"
if(SuperWhirlCount <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 051AE5FB
	/// @DnDParent : 5D6396D0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "SuperWhirlpool"
	/// @DnDSaveInfo : "objectid" "SuperWhirlpool"
	instance_create_layer(x + 0, y + 0, "Instances", SuperWhirlpool);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7A8EB371
	/// @DnDParent : 5D6396D0
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53D117AB
/// @DnDArgument : "var" "SuperWhirlCount"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(SuperWhirlCount >= 1){	/// @DnDAction : YoYo Games.Movement.Reverse
	/// @DnDVersion : 1
	/// @DnDHash : 5BF1D4F7
	/// @DnDParent : 53D117AB
	direction = (direction + 180) % 360;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61C2B0B0
	/// @DnDParent : 53D117AB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "Rev"
	Rev = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6087719E
	/// @DnDParent : 53D117AB
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 30);}