//--------------------------------------------------------------
// Name: Подставка для освежителя воздуха.
// Version: 1.3
// Purpose: 
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 05.10.2017
// Updated: 31.03.2018
// Copyright: (c) 2017 -2018 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//Подложка
translate([28,0,0])
hull() {
    translate([60,0,0]) cylinder(h=2, d=55, $fn=100, center=false);
    cylinder(h=2, d=55, $fn=100);
}
//Задняя стенка
translate([22,27,0]) cube([70,2.5,30]);

//Плашка с отверстиями под магниты
translate([22,27,30])
difference() {
    cube([70,2.4,20]);
    translate([10,3,10]) rotate([90.90,0]) color("blue")         cylinder(h=4, d=3, $fn=100, center=false);

    translate([60,3,10]) rotate([90.90,0]) color("blue")         cylinder(h=4, d=3, $fn=100, center=false);
}

//Цилиндры для размещения балонов освежителей воздуха
translate([27,0,0])
difference() {
    translate([0,0,0]) cylinder(h=30, d=55, $fn=100);
    translate([0,0,2]) cylinder(h=31, d=53, $fn=100);
}
translate([90,0,0])
difference() {
    translate([0,0,0]) cylinder(h=30, d=55, $fn=100);
    translate([0,0,2]) cylinder(h=31, d=53, $fn=100);
}
