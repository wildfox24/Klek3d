//--------------------------------------------------------------
// Name: Подставка для цилиндрического повербанка. PwbStand.
// Version: 1.7
// Purpose: Замок.
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 25.09.2017
// Updated: 26.09.2017
// Copyright: (c) 2017 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------

difference() {
    translate([0,0,0]) cylinder(h=8, d1=15, d2=22, $fn=100);
    translate([0,0,2]) cylinder(h=8, d=17, $fn=100);
}