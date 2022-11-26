$fa=1;
$fs=0.1;

// body
cube([60,20,10],center=true);

translate([-15,-10,0-0.001])
cube([30,20,15]);

// wheel
translate([-20,-1*(10)-2,0])
rotate([90,0,0])
cylinder(h=3, r=10);

translate([20,-1*(10)-2,0])
rotate([90,0,0])
cylinder(h=3, r=10);

translate([20,1*(10)+3+2,0])
rotate([90,0,0])
cylinder(h=3, r=10);

translate([-20,1*(10)+3+2,0])
rotate([90,0,0])
cylinder(h=3, r=10);

// flag
translate([0,0,15])
cylinder(h=15,r=0.5);

// axle
translate([-20,0,0])
rotate([90,0,0])
cylinder(h=30,r=1,center=true);

translate([20,0,0])
rotate([90,0,0])
cylinder(h=30,r=1,center=true);