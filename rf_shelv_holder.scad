//--------------------------------------------------------------
// Name: rf_shelv_holder.scad
// Version: 0.5
// Purpose: Refrigirator shelv holder
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 05.03.2018
// Updated: 05.03.2018
// Copyright: (c) 2018 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//
Ws=5;
Ht=8;
Wx=16;
Dc=21;
$fn=100;
module RFShelvHolder() {
    difference() {
        translate([0,0,0]) cube([Wx+10,20,Ht+Ws+3], false);
        translate([16,0,Ws]) cube([16,20,8], false);
    }
}
module ScrewHole(hx,hy,hz) {
  translate([hx,hy-hy-1,hz]) rotate([-90,0,0]) cylinder(d1=10, d2=4, h=2);
  translate([hx,hy,hz]) rotate([90,0,0]) cylinder(d=4, h=Ws+10);
}
difference() {
  RFShelvHolder();
  //ScrewHole(7,10,30);
  //ScrewHole(43,10,30);
}