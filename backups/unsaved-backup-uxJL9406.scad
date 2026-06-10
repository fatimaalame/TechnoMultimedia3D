// OpenSCAD - simple Ticket to Ride style Morocco taxi piece
// Stylized, low-detail, no base
// Copy into OpenSCAD and press F5/F6

$fn = 48;

scale([1,1,1])
    taxi_piece();

module taxi_piece(body_color = [0.82, 0.08, 0.08], sign_color = [0.92, 0.78, 0.12], wheel_color = [0.1, 0.1, 0.1]) {
    color(body_color)
    union() {
        body_shell();
        roof_sign(sign_color);
    }

    color(wheel_color)
    wheels();
}

module body_shell() {
    union() {
        // Main body
        translate([0,0,6])
            rounded_block(56, 24, 12, 2);

        // Cabin / roof
        translate([8,0,16])
            rounded_block(32, 22, 9, 2);

        // Hood wedge
        translate([-18,0,10])
            rotate([0,90,0])
                linear_extrude(height=18)
                    polygon(points=[[0,-10],[0,10],[6,9],[8,6],[8,-6],[6,-9]]);

        // Rear hatch slope
        translate([28,0,10])
            rotate([0,-90,0])
                linear_extrude(height=8)
                    polygon(points=[[0,-10],[0,10],[5,8],[8,4],[8,-4],[5,-8]]);

        // Bumpers
        translate([-28,0,5])
            rounded_block(4, 24, 4, 1);
        translate([28,0,5])
            rounded_block(4, 22, 4, 1);

        // Simple roof rack feet
        translate([6,0,25]) rounded_block(2, 18, 2, 0.6);
        translate([18,0,25]) rounded_block(2, 18, 2, 0.6);
    }
}

module roof_sign(sign_color) {
    color(sign_color)
    translate([12,0,29])
        rounded_block(24, 10, 5, 1.2);
}

module wheels() {
    translate([-16, 12, 4]) rotate([90,0,0]) cylinder(h=4, r=5, center=true);
    translate([ 16, 12, 4]) rotate([90,0,0]) cylinder(h=4, r=5, center=true);
    translate([-16,-12, 4]) rotate([90,0,0]) cylinder(h=4, r=5, center=true);
    translate([ 16,-12, 4]) rotate([90,0,0]) cylinder(h=4, r=5, center=true);
}

module rounded_block(x, y, z, r) {
    hull() {
        for (sx=[-1,1], sy=[-1,1], sz=[-1,1])
            translate([sx*(x/2-r), sy*(y/2-r), sz*(z/2-r)])
                sphere(r=r);
    }
}
