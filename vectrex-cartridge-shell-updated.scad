$fn = 100;

module vectrex_small_peg_fix(top_peg_d) {
    union() {
        color("Red")
        translate([-20, 16, 2])
        cylinder(h = 9, d = 6.0);

        color("Green")
        translate([-20, 16, 11])
        cylinder(h = 2, d = top_peg_d);

        color("Blue")
        translate([-20, 16, 2])
        cylinder(h = 3, d1 = 8, d2 = 4);
    
        color("Purple")
        translate([-21.5, 16, 2])
        cube([3, 5.5, 9]);
    }
}

module shell_no_pegs() {
    difference() {
        color("Gold")
        import("original/vectrex_cartridge_bottom.stl", convexity=10);

        translate([-24, 12, 2])
        cube([8, 8, 12]);
        
        translate([16, 12, 2])
        cube([8, 8, 12]);
    }
}

module shell_no_top_bracket() {
    difference() {
        shell_no_pegs();
        
        translate([8.6, -30, 11])
        cube([9, 18.1, 6.1]);
        
        translate([-17.6, -30, 11])
        cube([9, 18.1, 6.1]);
    }
}

module shell_wireout_variant() {
    union () {
        shell_no_top_bracket();
        
        vectrex_small_peg_fix(3.7);
        
        translate([40, 0, 0])
        vectrex_small_peg_fix(3.7);
    }
}

module shell_test_cart_variant() {
    union () {
        shell_no_pegs();
        
        vectrex_small_peg_fix(3.9);
        
        translate([40, 0, 0])
        vectrex_small_peg_fix(3.9);
    }
}

//vectrex_small_peg_fix(3.75);
//vectrex_small_peg_fix(4);
//vectrex_small_peg_fix(3.6);
//shell_no_pegs();
//shell_no_top_bracket();

shell_wireout_variant();
//shell_test_cart_variant();
