//--------------------------------------------------------------
// Name: SpoolHub
// Version: 1.5
// Purpose: Держатель-заглушка для катушки филамента
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 07.12.2017
// Updated: 07.12.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//
$fn=100;
h1=2;
h2=15;
D1=52;
D2=10;
difference() {
    cylinder(d=D1+5, h=h1);
    cylinder(d=D2, h=h2);
}
difference() {
    translate([0,0,h1]) cylinder(d=D1, h=h2);
    translate([0,0,h1]) cylinder(d=D1-2.0, h=h2);
}
difference() {
    cylinder(d=D2, h=10);
    cylinder(d=D2-1.5, h=10);
}
