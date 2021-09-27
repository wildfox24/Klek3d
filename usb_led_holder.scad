//--------------------------------------------------------------
// Name: usb_led_holder
// Version: 1.1
// Purpose: 
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 10.04.2018
// Updated: 12.04.2018
// Copyright: (c) 2018 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
wth=2; //wall thikness

difference() {
    translate([0,0,0]) cube([17, 14+wth, 5.5+wth]);
    translate([-3,wth/2,wth/2]) cube([17, 14, 5.5]);
    translate([17-3,(14+wth)/2,(5.5+wth)/2]) rotate([0,90,0]) cylinder(d=6+0.2, h=wth+1, $fn=100);
}

difference() {
    translate([17,(14+wth)/2,(5.5+wth)/2]) rotate([0,90,0]) cylinder(d=6+wth, h=15, $fn=100);
    translate([17,(14+wth)/2,(5.5+wth)/2]) rotate([0,90,0]) cylinder(d=6+0.2, h=15+2, $fn=100);
}
