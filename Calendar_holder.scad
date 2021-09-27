//--------------------------------------------------------------
// Name: calwndar_holder
// Version: 4.3
// Purpose: Подставка для отрывного календаря
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 01.12.2017
// Updated: 18.12.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//
wd=80;
ht=125;
ln=60;
Ws=3;
Hus=10;
Diam=15;
Diam1=14;
Angle=-15;
$fn=80;

module CalHoldrBase() {
  union() {
    difference() {
      translate([0,Ws+4,Diam/2]) rotate([0,90,0]) scale([1,2,1]) cylinder(d=Diam, wd, false);
      rotate([Angle,0,0]) translate([0,Ws+5,Diam/2]) cube([wd,Ws,ht]);
      str2018();
    }
  }
  translate([0,Diam/2,0]) cube([wd,ln,Ws]);
 }

module FrontPanel() {
  difference() {
  //union() {
    translate([0,0,0]) cube([wd,Ws,ht]);
    Hole4us(14,Ws);
    translate([60,-0.6,90]) scale([0.5,1,0.5]) import("65mm_Snowflake.stl");
    translate([60,-0.6,ht/2-20]) scale([0.6,0.1,0.6]) import("Dog_Stand_v1.1.stl");
  }
}

module Hole4us(dx,dz) {
  translate([dx,-1,ht-Hus-dz]) cube([2,Ws+2,Hus], false);
  translate([dx+50,-1,ht-Hus-dz]) cube([2,Ws+2,Hus], false);
}

module str2018() {
  translate([2,-5,10])
  rotate([25,0,0])
  scale([2.5,1,1])
  linear_extrude(2) text("2018", font="Tahima:style=Bold" ,size=8);
}

  CalHoldrBase();
  rotate([Angle,0,0]) translate([0,Ws+5,Diam/2])
  FrontPanel();
