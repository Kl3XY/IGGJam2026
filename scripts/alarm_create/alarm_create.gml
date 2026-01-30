function alarm_create(__duration, __function_to_execute, __args = []){
	with
	(instance_create_depth(x, y, depth, obj_alarm))
	{
		duration = __duration	
		_on_execute = __function_to_execute;
		args = __args;
	}
}