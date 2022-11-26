cube([20,1,15],center=true);

translate([0,-20,0])
cube([20,1,15],center=true);

// bottom
translate([0,-10,-7])
rotate([90,0,0])
cube([21,1,21],center=true);

translate([-10,-10,0])
rotate([0,0,90])
cube([21,1,15],center=true);

translate([10,-10,0])
rotate([0,0,90])
cube([21,1,15],center=true);
