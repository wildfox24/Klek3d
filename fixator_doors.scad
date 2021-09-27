//--------------------------------------------------------------
// Name: Locker.
// Version: 1.5
// Purpose: Замок.
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 23.09.2017
// Updated: 23.09.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//Rotate to print on bed
rotate([90,0,0]){
translate([15,0,5]) cube([120,5,10]);
difference() {
    translate([10,0,10]) rotate([0,90,90]) cylinder(h=5, d=20, $fn=100);
    translate([10,0,10]) rotate([0,90,90]) cylinder(h=6, d=10, $fn=100);
    color("blue") translate([5,0,0]) rotate([0,0,0]) cube([10,6,10]);
}
difference() {
    translate([140,0,10]) rotate([0,90,90]) cylinder(h=5, d=20, $fn=100);
    translate([140,0,10]) rotate([0,90,90]) cylinder(h=6, d=10, $fn=100);
}
}