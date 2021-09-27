//--------------------------------------------------------------
// Name: Window Limiter.
// Version: 2.7
// Purpose: Фиксатор гребенки ограничителя открытого окна.
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 11.09.2017
// Updated: 10.10.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
r_screw=4;
h_screw=20;
difference() {
    cube([28,18,10]);
    translate([7,7,1]) color("lightgreen") cylinder(h=11, d=7, $fn=100);
    translate([21,7,1]) color("lightgreen") cylinder(h=11, d=7, $fn=100);
}
difference() {
    translate([7,7,0]) color("lightgreen") cylinder(h=h_screw, d=7, $fn=100);
    translate([7,7,0]) color("lightgreen") cylinder(h=h_screw, d=r_screw, $fn=100);

}
difference() {
    translate([21,7,0]) color("lightgreen") cylinder(h=h_screw, d=7, $fn=100);
    translate([21,7,0]) color("lightgreen") cylinder(h=h_screw, d=r_screw, $fn=100);
}

translate([16.5,18, 5]) rotate([0, 90, 90]) cylinder(h=12, d=5, $fn=100);
translate([12.5,18, 5]) rotate([0, 90, 90]) cylinder(h=12, d=5, $fn=100);

hull() {
    translate([9,30,5]) rotate([0,90,90]) cylinder(h=1.5, d=10, $fn=100);
    translate([20,30,5]) rotate([0,90,90]) cylinder(h=1.5, d=10, $fn=100);
}

