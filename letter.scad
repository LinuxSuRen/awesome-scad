module number(num,c="gray"){
    color(c)
    text(num);
}

module magic_cube(){    
    difference(){
    color("yellow")
    cube(12,center=true);

    translate([-4,-5,6])
    number("1");

    translate([4,-5,-6])
    rotate([0,180,0])
    number("2");

    translate([-3,-5.8,-5])
    rotate([90,0,0])
    number("3");

    translate([4,6,-5])
    rotate([90,0,180])
    number("4");

    translate([6,-4,3])
    rotate([0,90,0])
    number("5");

    translate([-5.5,-5,-4])
    rotate([0,-90,0])
    number("6");
    }
}

magic_cube();
