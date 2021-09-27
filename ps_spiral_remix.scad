//--------------------------------------------------------------
// Name: ps_spiral_remix.scad
// Version: 1.1
// Purpose: Remix spiral pen stand
// Author: Evgeny Klepikov
// E-mail: klek07@ya.ru
//
// Created: 13.02.2018
// Updated: 13.02.2018
// Copyright: (c) 2018 WildFox24
// Licence: GPL v3
//--------------------------------------------------------------
//

$fn=100;
import("/home/klek/Projects/3DModels/Spiral_Pen_Stand/files/ps_spiral.stl");
translate([21,13.2,0]) cylinder(d=10, h=20);
