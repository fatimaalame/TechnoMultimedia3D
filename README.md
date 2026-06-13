# Projet STM ) Impression 3D & découpe 2D

Projet réalisé dans le cadre du cours STM, Printemps 2026
Groupe J : Fatima Alame & Mikael Sahakyan 

## Présentation générale
Ce projet regroupe trois productions liées à la modélisation 3D, à l’impression 3D et à la découpe / gravure 2D.

On a réalisé :

1. **Un objet 3D intégré dans notre jeu sérieux Unity**  
   -> un bouton interactif nommé `ButtonToPress`.

2. **Un objet 3D destiné à l’impression physique**  
   -> un petit wagon de train/tram, inspiré des pièces du jeu *Les Aventuriers du Rail*, version Genève.

3. **Un objet 2D réalisé avec Inkscape**  
   -> un plateau de jeu représentant Genève et ses environs.

Les deux objets 3D ont été modélisés avec **OpenSCAD**. Ils sont paramétriques, ce qui signifie que plusieurs valeurs peuvent être modifiées facilement, comme la longueur, la largeur, la hauteur ou encore le niveau de détail.

---

## Structure du projet

```txt
.

├── 00_ADMIN/
│   ├── ARCHIVES/
│   │   ├── RAPPORT/
│   │   └── SVG/
│   │
│   ├── Descriptif2D-3D_GroupeJ copy.pdf
│   └── TR01.pdf
│
├── 01_BUTTON_3D/
│   ├── Button.stl
│   ├── ButtonToPress.json
│   ├── ButtonToPress.scad
│   └── Design3D.png
│
├── 02_WAGON_3D/
│   ├── train.scad
│   └── train.stl
│
├── 03_2D/
│   └── SVG_Final.svg
│
├── .gitignore
├── RAPPORT_FINAL_J.pdf
└── README.md