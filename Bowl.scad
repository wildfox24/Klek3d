//--------------------------------------------------------------
// Name: Миска для конфет.
// Version: 1.2
// Purpose: 
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 08.10.2017
// Updated: 08.10.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
union() {
    difference() {
        translate([0,0,30]) sphere(r=30, $fn=100);
        translate([0,0,30]) sphere(r=29, $fn=100);
        translate([0,0,40]) cylinder(h=20, r=35, $fn=100);
    }
    translate([0,0,0]) cylinder(h=2, r=15, $fn=100);
}