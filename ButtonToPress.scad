// paramètres
width = 30; //[1:1:40]
length = 30; //[1:1:40]
baseHeight = 4; //[1:1:11]
buttonHeight = 3;
borderThickness = 2;
cornerRadius = 4;
detail = 40;

$fn = detail; // niveau détail

// module bouton
module floorButton(w, l, hBase, hButton, border, r)
{
    // base
    color("gray")
    roundedBox(w, l, hBase, r);

    // surface bouton
    color("red")
    translate([0, 0, 4])
    roundedBox(w - 2*border, l - 2*border, hButton+1, r/1);
}

// boîte arrondie simple
module roundedBox(w, l, h, r)
{
    minkowski()
    {
        cube([w - 2*r, l - 2*r, h], center = true);
        cylinder(r = r, h = 0.01, center = true);
    }
}

// affichage
floorButton(width, length, baseHeight, buttonHeight, borderThickness, cornerRadius);