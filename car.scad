$fa=1;
$fs=0.5;

include <sphere.scad>

module car(){
length=60;
width=20;
wheel_size=18;

// body
resize([length,width,10])
cube([length,width,10],center=true);

translate([-15,-10,0-0.001])
cube([30,20,15]);

// front left wheel
translate([-20,-1*(width/2)-5,0])
round_wheel(wheel_size=wheel_size);
// front right wheel
translate([-20,1*(width/2)+3+2,0])
round_wheel(wheel_size=wheel_size);
// rear left wheel
translate([20,-1*(width/2)-5,0])
round_wheel(wheel_size=wheel_size);
// rear right wheel
translate([20,1*(width/2)+3+2,0])
wheel(wheel_radius=wheel_size/2,hole_radius=2);

// flag
translate([0,0,15])
cylinder(h=15,r=0.5);

// front axle
translate([-20,0,0])
rotate([90,0,0])
cylinder(h=width+3+2,r=1,center=true);
// rear axle
translate([20,0,0])
rotate([90,0,0])
cylinder(h=width+2+3,r=1,center=true);
}

for(dy=[0:40:40]){
translate([0,dy,0])
car();
}
