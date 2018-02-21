$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm
base_bottom_r=160/2;
base_top_r=49.2/2;
base_h=15;

top_h=50;
wall=10;
   

difference() {
    union() {
        cylinder(top_h, base_top_r, base_top_r);
        cylinder(base_h, base_bottom_r, base_top_r);
    }
    translate([0, 0, -10]) cylinder(top_h * 2, base_top_r-wall, base_top_r-wall);
}
