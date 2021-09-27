//--------------------------------------------------------------
// Name: Подставка для освежителя воздуха.
// Version: 2.4
// Purpose: 
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 05.10.2017
// Updated: 28.05.2018
// Copyright: (c) 2017-2018 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
$fn=100;
//Подложка
translate([29,0,0])
hull() {
    translate([60,0,0]) cylinder(h=2, d=58, $fn=100, center=false);
    cylinder(h=2, d=58, $fn=100);
}
//Задняя стенка
//translate([24,29,0]) cube([70,2,50]);

// Отверстия под саморезы
difference() {
    translate([24,29,0]) cube([70,2,50]);
    translate([35,31.5,40]) rotate([90,0,0]) cylinder(d1=3, d2=6, h=3);
    translate([82,31.5,40]) rotate([90,0,0]) cylinder(d1=3, d2=6, h=3);
}
//Цилиндры для размещения балонов освежителей воздуха
translate([27,0,0])
difference() {
    translate([1,0,0]) cylinder(h=30, d=58, $fn=100);
    translate([1,0,2]) cylinder(h=31, d=56, $fn=100);
}
translate([90,0,0])
difference() {
    translate([0,0,0]) cylinder(h=30, d=58, $fn=100);
    translate([0,0,2]) cylinder(h=31, d=56, $fn=100);
}
