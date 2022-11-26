module wheel(wheel_radius=20,hole_radius=6){

    difference(){
    rotate([90.0,0])
    cylinder(h=4,r=wheel_radius);

    translate([wheel_radius/2,0,0])
    rotate([90,0,0])
    cylinder(h=10,r=hole_radius,center=true);
        
    translate([-wheel_radius/2,0,0])
    rotate([90,0,0])
    cylinder(h=10,r=hole_radius,center=true);

    translate([0,0,wheel_radius/2])
    rotate([90,0,0])
    cylinder(h=10,r=hole_radius,center=true);
        
    translate([0,0,-wheel_radius/2])
    rotate([90,0,0])
    cylinder(h=10,r=hole_radius,center=true);
    }
}

module round_wheel(wheel_size=18){
    resize([wheel_size,5,wheel_size])
    sphere(r=wheel_size);
}