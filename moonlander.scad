noWristShell();

module noWristShell(){
    difference() {
        fullShell();

        color("red")
        translate([76,-25,-10])
        cube([150,150,30]);
    }
}

module fullShell() {
    union() {
        color("blue")
        filledMoonlander([0.250, 0.250, 1], 1);

        difference() {
            color("orange")
            outlineMoonlander();
            
            color("red")
            translate([6,12,1.1])
            filledMoonlander([0.235, 0.235, 1], 10);
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
linear_extrude(height = 10)
    offset(delta = 10)
        import("moonlander_outline.svg");        
}
