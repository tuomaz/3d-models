$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm
outer_r=41/2;
inner_r=31/2;
h=2.2;

top_h=50;
wall=10;
   

difference() {
        cylinder(h, outer_r, outer_r);
       translate([0, 0, -1]) cylinder(h*2, inner_r, inner_r);
}