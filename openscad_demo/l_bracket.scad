
// Parametric L-bracket demo
w = 40; d = 30; h = 4; arm = 30; hole = 3.2;
difference() {
  union() {
    cube([w, d, h]);
    translate([0, 0, h]) cube([w, h, arm]);
  }
  // base holes
  for (x = [8, w-8]) translate([x, d/2, -1]) cylinder(h=h+2, r=hole, $fn=48);
  // wall holes
  for (z = [h+8, h+20]) translate([w/2, -1, z]) rotate([-90,0,0]) cylinder(h=h+2, r=hole, $fn=48);
  // fillet-ish chamfer on outer edge
  translate([w, d, h+arm]) rotate([0,45,0]) cube([12, d+1, arm]);
}
