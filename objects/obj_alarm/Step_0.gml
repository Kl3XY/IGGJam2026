duration -= delta;

if duration <= 0 {
	_on_execute();
	instance_destroy();	
}