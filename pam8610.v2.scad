//--------------------------------------------------------------
// Name: Корпус PAM8610.
// Version: 2.4
// Purpose: Корпус для готовой платы
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 30.10.2017
// Updated: 06.11.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//Для красной платы
Xbase=45;
Ybase=45;
Zbase=26;
Ws=2;
$fn=60;

difference() {
  difference() {
    cube([Xbase+Ws*2, Ybase+Ws*2, Zbase+Ws*2]);
    translate([Ws,Ws,Ws]) cube([Xbase, Ybase, Zbase]);
    // Rear panel
    translate([Xbase,Ws,Ws]) cube([Xbase, Ybase, Zbase]);
    //translate([50,2,5]) cube([Xbase-10, Ybase, Zbase+1]);
  }
// Hole for potentiometr
  translate([0,34,12]) rotate([0,90.0]) color("red") cylinder(h=3, d=8);
}
// Put text on top
rotate([0,0,270])
translate([-43, 15, 30]) linear_extrude(0.4) text("PAM8610", font="Verdana:style=Bold" ,size=5);