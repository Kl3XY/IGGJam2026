function alarm_create(__duration, __function_to_execute, __args = []){
	with
	(instance_create_depth(0, 0, 0, obj_alarm))
	{
		duration = __duration	
		_on_execute = __function_to_execute;
		args = __args;
	}
}