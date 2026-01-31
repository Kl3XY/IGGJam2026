copyVal = 0;
str = "Checkpoint Reached!";

alarm_create(200, function(args) {
	instance_destroy(args[0])	
}, [self])