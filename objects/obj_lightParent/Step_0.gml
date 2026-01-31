changeScale -= delta;
if changeScale <= 0 {
	image_xscale += random_range(-0.1, 0.1);
	image_xscale = clamp(image_xscale, 1, 100)
	image_yscale = image_xscale;
	changeScale = 10;
}