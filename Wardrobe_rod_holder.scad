//--------------------------------------------------------------
// Name: Wardrobe_rod_holder.scad
// Version: 1.0
// Purpose: Wardrobe leg holder
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 28.12.2017
// Updated: 19.03.2018
// Copyright: (c) 2017-2018 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//
Ws=15;
Wd=50;
Wd1=21;
Ht=40;
Dc=21;
$fn=100;
module WardrobLegHolder() {
    difference() {
        translate([0,0,0]) cube([Wd,Ws,Ht], false);
        translate([Wd/2-Wd1/2,-2,Wd1]) cube([Wd1,Ws,Ht+1]);
        translate([Wd/2,Ws-2,Wd1+2]) rotate([90,0,0]) scale([1,1.5,1]) cylinder(d=Dc, h=Ws);
    }
}
module ScrewHole(hx,hy,hz) {
  translate([hx,hy-hy-1,hz]) rotate([-90,0,0]) cylinder(d1=10, d2=4, h=2);
  translate([hx,hy,hz]) rotate([90,0,0]) cylinder(d=4, h=Ws+10);
}
difference() {
  WardrobLegHolder();
  ScrewHole(7,10,30);
  ScrewHole(43,10,30);
}