$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm

valve_radius=68/2;
wall=15;
height=75+wall;
cut=46;
cut_depth=53;

outer_radius = valve_radius + wall;

difference() {
    union() {
        cylinder(height, outer_radius, outer_radius);
    }
    union() {
        translate([0, 0, -wall]) cylinder(height, valve_radius, valve_radius);
        
        translate([20, -cut/2, -1]) cube([40, cut, cut_depth+1]);
        
        translate([0, valve_radius+4, -wall]) resize(newsize=[0,0,0]) cylinder(100, 4, 4);
        translate([0, -valve_radius-4, -wall]) resize(newsize=[0,0,0]) cylinder(100, 4, 4);
        rotate([0,0,-60]) translate([0, -valve_radius-4, -wall]) resize(newsize=[0,0,0]) cylinder(100, 4, 4);
        rotate([0,0,-120]) translate([0, -valve_radius-4, -wall]) resize(newsize=[0,0,0]) cylinder(100, 4, 4);
        
        translate([-valve_radius, 0, -25]) resize(newsize=[0,0,0]) cylinder(100, 9, 9);
    }   
}

