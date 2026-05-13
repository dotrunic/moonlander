noWristShell();

module noWristShell(){
    difference() {
        fullShell();

        color("red")
        translate([76,-25,-10])
        cube([150,150,30]);
        
        color("red")
        translate([180.9,150,-10])
        cube(30);
        
        color("red")
        translate([70,125,5])
        cube(30);
        
        rotate(48)
        color("red")
        translate([138,101,5])
        cube(10);
        
        rotate(48)
        color("red")
        translate([150,101.3,5])
        cube(10);

        rotate([0,0,-9])
        color("red")
        translate([-12.8,165,5])
        cube(10);
        
        color("red")
        translate([168.8,124,5])
        cube([6,10,15]);
        
        color("red")
        translate([40.2,250,5])
        cube(20);
        
        color("red")
        translate([15,238,5])
        cube([10,10,12]);
    }
    
    rotate(48)
    translate([148,111.8,0])
    cube([10,5,15]);
    
    color("green")
    translate([15,170,2])
    cube([20,20,3]);   
   
    color("green")
    translate([70,125,2])
    cube([20,20,3]);
    
    color("green")
    translate([174.8,125,0])
    cube([6.1,20,15]);
    
    color("green")
    translate([174.8,150,0])
    cube([6.1,20,15]);
}

module fullShell() {
    union() {
        color("blue")
        filledMoonlander([0.250, 0.250, 1], 5);

        difference() {
            color("orange")
            outlineMoonlander();
            
            color("red")
            translate([6,12,4])
            filledMoonlander([0.235, 0.235, 1], 20);
        }
    }    
}

module filledMoonlander(scale, height){
scale(scale)
linear_extrude(height = height)
    offset(delta = 1)
        import("moonlander.svg");
}

module outlineMoonlander(){
scale([0.250, 0.250, 1])
linear_extrude(height = 15)
    offset(delta = 10)
        import("moonlander_outline.svg");        
}