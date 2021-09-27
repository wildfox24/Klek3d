//--------------------------------------------------------------
// Name: Подставка для повербанка. PwbHandle.
// Version: 3.0
// Purpose: 
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 30.09.2017
// Updated: 30.09.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
translate([0,0,2])
difference(){
    cube([26,76,54]);
    translate([1.5,1.5,2]) color("lightblue") cube([23,73,54]);
}
translate([12.4,10,0])
hull() {
    translate([0,55,0]) cylinder(h=2, d=40, $fn=100);
    cylinder(h=2, d=40, $fn=100);
}
