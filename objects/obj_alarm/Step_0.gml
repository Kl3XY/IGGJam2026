duration -= delta;

if duration <= 0 {
	_on_execute(args);
	instance_destroy();	
}