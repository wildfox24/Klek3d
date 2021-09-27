use <lib/mendel_misc.scad>
use <lib/parametric_involute_gear_v5.0.scad>

WadeL_double_helix();

module SmoothHole() {
	translate([6.5,0,-1]) cylinder(r=1.5, h=10, $fn=6);
}

module WadeL_double_helix(){
	//Large WADE's Gear - Double Helix

	circles=5;
	teeth=42;
	pitch=268;
	twist=200;
	height=11;
	pressure_angle=30;
	logo=14;

	difference(){
		union(){
    // половина шевронной шестерни
		gear (number_of_teeth=teeth,
			circular_pitch=pitch,
			pressure_angle=pressure_angle,
			clearance = 0.2,
			gear_thickness =0,
			rim_thickness = height/2,
			rim_width = 5,
			hub_thickness = height/2*1.5-2-1.5,
			hub_diameter = 25,
			bore_diameter = 8,
			circles=circles,
			twist = twist/teeth);
    // вторая половина шевронной шестерни
		mirror([0,0,1])
		gear (number_of_teeth=teeth,
			circular_pitch=pitch,
			pressure_angle=pressure_angle,
			clearance = 0.2,
			gear_thickness = height/2,
			rim_thickness = height/2,
			rim_width = 5,
			hub_thickness = height/2,
			hub_diameter=25,
			bore_diameter=7,
			//circles=circles,
			twist=twist/teeth);
		}
		// Головка болта
    // болт из нержавейки
		translate([0,0,-1])rotate([180,0,0])m8_hole_vert_with_hex(13.4,20);

		// 6 углублений под головку болта
		render()for (n=[0:5]){
            rotate([0,0,n*360/6])SmoothHole();
		}

    // сглаживание острых концов шестерни
		translate([0,0,3.5]) difference(){
		cylinder(r=73.4/2, h=2.5);
			translate([0,0,1]) cylinder(r=20,h=2.6);
			cylinder(r1=67.4/2,r2=(67.5-3)/2,h=1);
		}
		mirror([0,0,1])translate([0,0,3.5]) difference(){
			cylinder(r=73.4/2, h=3);
			cylinder(r1=67.4/2,r2=(67.5-3)/2,h=1);
		}
		translate([0,0,4.3]) difference(){
			cylinder(r=25.1/2, h=2);
			cylinder(r1=25.1/2,r2=20.1/2,h=4);
		}
		// Капли - дырки
		for (n=[0:4]){
		rotate([0,0,n*360/5]) translate([18.3,0,-10])
			union(){
				cylinder(r=logo/2.5,h=20,$fn=24);
				rotate([0,0,45]) cube([logo/2.5,logo/2.5,20]);
			}
		}
	}
}
