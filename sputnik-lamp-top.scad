sphere_size = 76/2;
sphere_thickness = 3;
light_lens_size = 65/2;
light_unit_height = 34;
battery_unit_width = 53;
battery_unit_length = 38;
battery_unit_height = 8;
ant_holder_width = 10;
ant_holder_length = 10;
ant_holder_height = 20;
ant_hole_size = 5 / 2;

difference(){
	// outer shell
	sphere(r=sphere_size);

	// battery hole
	translate([-battery_unit_width / 2, -battery_unit_length / 2, -1]){
		#cube([battery_unit_width,battery_unit_length,battery_unit_height + 1]);
	}

	// bottom cut-off
	translate([-sphere_size,-sphere_size,-sphere_size]){
		cube([sphere_size * 2, sphere_size * 2, sphere_size]);
	}
}

translate([sphere_size - (ant_holder_width / 2) + ant_hole_size , -ant_holder_width / 2,0]){
	rotate([0,-30,0]){
		difference(){
			cube([ant_holder_width,ant_holder_length,ant_holder_height]);
			translate([ant_hole_size * 2, ant_hole_size * 2, -1]){
				cylinder(r=ant_hole_size,h=ant_holder_height - 4);
			}
		}
	}
}

/*
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
				translate([0,0,-6]){
					sphere(r=sphere_size - sphere_thickness);
				}
			}
		}
		// light hole
		cylinder(r=light_lens_size,h=light_unit_height);
	}

	translate([0,0,sphere_size]){
		cylinder(r=sphere_size, h=sphere_size);
	}
}
*/