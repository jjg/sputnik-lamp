sphere_size = 76/2;
sphere_thickness = 3;
light_lens_size = 65/2;
light_unit_height = 34;

// subtract top of sphere
difference(){
	difference(){
		// main body sphere
		translate([0,0,sphere_size]){
			difference(){
				// outer sphere
				sphere(r=sphere_size);
				// sphere hollow
				sphere(r=sphere_size - sphere_thickness);
			}
		}
		// light hole
		#cylinder(r=light_lens_size,h=light_unit_height);
	}

	translate([0,0,sphere_size]){
		cylinder(r=sphere_size, h=sphere_size);
	}
}