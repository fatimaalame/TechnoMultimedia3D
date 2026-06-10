L = 42; // [30:0.5:70] longueur
W = 16; // [10:0.5:30] largeur
H = 18; // [10:0.5:35] hauteur
detail = 3; // [1:Basique, 2:Fenetres, 3:Complet]

wagon(L,W,H,detail);


// wagon
module wagon(L,W,H,detail){

union(){

    // Base du train
    cube([L,W,H*0.7]);

    // Toit arrondi
    translate([0,W/2,H*0.7])
    rotate([0,90,0])
    cylinder(h=L,r=H*0.40);

    // ROues
    roues(L,W);


    // Niveau 2
    // Fenêtres

    if(detail>=2){

        for(i=[6:7:L-8]){

 
            translate([i,-0.5,H*0.30])
                cube([4,2,6]);

            translate([i,W-1.5,H*0.30])
                cube([4,2,6]);
        }
    }


    // Niveau 3
    if(detail>=3){

       
        // marchepieds
        translate([4,-1,0])
            cube([L-8,1,2]);

        translate([4,W,0])
            cube([L-8,1,2]);

    }

}
}

//Roues
module roues(L,W){

for(i=[5:8:L-5]){

    
    translate([i,3,-2])
    rotate([90,0,0])
    cylinder(h=3,r=2.5);

    
    translate([i,W-3,-2])
    rotate([-90,0,0])
    cylinder(h=3,r=2.5);

}

}