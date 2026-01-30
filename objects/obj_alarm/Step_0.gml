duration -= delta;

if duration <= 0 {
	try {
		_on_execute(args);
	} catch(ex) {
		show_message(ex);	
	}
	instance_destroy();	
}