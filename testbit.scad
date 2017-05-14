$fa=0.5; // default minimum facet angle is now 0.5
$fs=0.5; // default minimum facet size is now 0.5 mm
r=49/2;
h=10;
w=10;

difference() {
    cylinder(h,r,r);
    cylinder(h*1.02,r-w,r-w);
}