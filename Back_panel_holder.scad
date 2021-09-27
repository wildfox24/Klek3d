//--------------------------------------------------------------
// Name: Back_panel_holder.scad
// Version: 1.4
// Purpose: 
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 05.12.2017
// Updated: 24.12.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//
Ws=5;
module BpHolder() {
  linear_extrude(20) {
    translate([0,0,0]) square([35,Ws], false);
    translate([-Ws,21,0]) rotate([0,0,360]) square([10,Ws], false);
    rotate([0,0,90]) square([21,Ws], false);
    translate([30,0,0]) rotate([0,0,270]) square([19,Ws], false);
    translate([30+Ws,-18,0]) rotate([0,0,180]) square([20,Ws], false);
  }
}
difference() {
  BpHolder();
  translate([-Ws,13,10]) rotate([0,90,0]) cylinder(d=4, h=Ws, $fn=100);
  translate([-Ws,13,10]) rotate([0,90,0]) cylinder(d1=8, d2=4, h=2, $fn=100);
}