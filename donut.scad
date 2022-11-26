$fs=0.4;

module donut(wheel_radius=12){
tyre_diameter=6;

rotate_extrude(angle=360){
translate([wheel_radius-tyre_diameter/2,0])
circle(d=tyre_diameter);
}
}

module cylinder_wheel(wheel_radius=12){
difference(){
    cylinder(h=2,r=wheel_radius-2,center=true);
    cylinder(h=4,r=2,center=true);
}

donut(wheel_radius=wheel_radius);
}

//rotate([0,90,0])
cylinder_wheel(20);
