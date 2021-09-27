//--------------------------------------------------------------
// Name: Удлиняющая втулка для вешалки
// Version: 1.5
// Purpose: 
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 29.10.2017
// Updated: 29.10.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
$fn=100;
translate([0,0,0])
cylinder(h=10, d=11.1, center=false);
translate([0,0,10])
cylinder(h=4, d=12.1, center=false);
translate([0,0,14])
cylinder(h=13, d=12.1, center=false);