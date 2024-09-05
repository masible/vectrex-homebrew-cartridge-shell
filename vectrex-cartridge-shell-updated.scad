$fn = 100;

diameter_center_peg_top = 5.4;

// Single small side peg
module vectrex_small_peg_fix(top_peg_d) {
    union() {
        color("Red")
        cylinder(h = 9, d = 6.0);

        color("Green")
        translate([0, 0, 9])
        cylinder(h = 2, d = top_peg_d);

        color("Blue")
        cylinder(h = 3, d1 = 8, d2 = 4);
    
        color("Purple")
        translate([-1.5, 0, 0])
        cube([3, 5.5, 9]);
    }
}

// Remove the small pegs
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

// Remove the smaller pegs and the top of the bigger one
module shell_middle_peg() {
    difference() {
        shell_no_pegs();
        
        color("Brown")
        translate([-6, 12, 11])
        cube([12, 8, 2.01]);
    }
}

// Remove the top bracket for longer PCBs
module shell_no_top_bracket(top_peg_d) {
    difference() {
        union() {
            shell_middle_peg();
            
            difference() {
                translate([0, 16, 11])
                cylinder(h = 2, d = top_peg_d);

                translate([0, 16, -1])
                cylinder(h = 15, d = 2);
            }
        }
        
        translate([8.6, -30, 11])
        cube([9, 18.1, 6.1]);
        
        translate([-17.6, -30, 11])
        cube([9, 18.1, 6.1]);
    }
}

module shell_wireout_variant() {
    union () {
        shell_no_top_bracket(5.1);

        translate([-(15.96 + 3.85/2 + 5.1/2), 16, 2])
        vectrex_small_peg_fix(3.7);
        
        translate([15.96 + 3.85/2 + 5.1/2, 16, 2])
        vectrex_small_peg_fix(3.7);
    }
}

module shell_test_cart_variant() {
    union () {
        shell_no_pegs();

        diameter_side_hole = 3.95;
        diameter_side_peg = 3.9;

        // Right
        translate([-(14.85 + diameter_side_hole/2 + diameter_center_peg_top/2), 16, 2])
        vectrex_small_peg_fix(diameter_side_peg);
        
        //Left
        //edge to edge 15.2,
        translate([15.2 + diameter_side_hole/2 + diameter_center_peg_top/2, 16, 2])
        vectrex_small_peg_fix(diameter_side_peg);
    }
}

//vectrex_small_peg_fix(3.75);
//vectrex_small_peg_fix(4);
//vectrex_small_peg_fix(3.6);
//shell_no_pegs();
//shell_no_top_bracket();

shell_wireout_variant();
//shell_test_cart_variant();
