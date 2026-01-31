changeScale -= delta;
if changeScale <= 0 {
	image_xscale += random_range(-0.1, 0.1);
	image_yscale = image_xscale;
	changeScale = 10;
}