# Jeu de Touché/Coulé en Ruby

Voici mon implémentation du jeu touché/coulé en Ruby.
Le jeu se joue entre deux joueurs qui ont chacun une grille sur laquelle ils doivent placer deux bateaux (un grand et un petit) et essaient chacun de faire couler le bateau de l'autre en tirant sur des positios de la grille.

## Prérequis

- Ruby 2.7

## Installation

Clonez le dépôt:


C:\Users\ingri\Documents\SoftwareEngineerRubyProject-Ingrid-Moukala>ruby game.rb
Joueur 1, veuillez saisir votre nom:
Ingrid
Joueur 2, veuillez saisir votre nom:
Julianne
Maintenant, chaque joueur devra placer ses deux bateaux,

      le petit de taille 3 et puis le grand de taille 4.

      Pour cela il faudra choisir la position à partir de laquelle le bateau sera positionné

      Attention: Lorsque vous placer le bateau il ne faut pas qu'il soit placé en dehors de limites de la grille!
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

Ingrid, placez vos bateaux:
On place d'abord le petit bateau de taille 3.
Veuillez entrer la position de votre petit bateau:
A0
A|S|S|S|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|
Maintenant on place le grand bateau, de taille 4.
Veuillez entrer la position de votre grand bateau:
B0
A|S|S|S|_|_|
B|S|S|S|S|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|
A0
A1
A2

A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

Julianne, placez vos bateaux:
On place d'abord le petit bateau de taille 3.
Veuillez entrer la position de votre petit bateau:
C0
A|_|_|_|_|_|
B|_|_|_|_|_|
C|S|S|S|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|
Maintenant on place le grand bateau, de taille 4.
Veuillez entrer la position de votre grand bateau:
E0
A|_|_|_|_|_|
B|_|_|_|_|_|
C|S|S|S|_|_|
D|_|_|_|_|_|
E|S|S|S|S|_|
 |0|1|2|3|4|
B0
B1
B2
Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: []
Ingrid,
Où voulez-vous tirer:
A0
Manqué!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: []
Julianne,
Où voulez-vous tirer:
A0
Touché!

Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: ["A0"]
Ingrid,
Où voulez-vous tirer:
A1
Manqué!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: ["A0"]
tirs manqués: []
Julianne,
Où voulez-vous tirer:
A1
Touché!

Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: ["A0", "A1"]
Ingrid,
Où voulez-vous tirer:
A2
Manqué!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: ["A0", "A1"]
tirs manqués: []
Julianne,
Où voulez-vous tirer:
A2
Touché!
Petit bateau Coulé ;)

Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: ["A0", "A1", "A2"]
Ingrid,
Où voulez-vous tirer:
B0
Manqué!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: ["A0", "A1", "A2"]
tirs manqués: []
Julianne,
Où voulez-vous tirer:
B0
Touché!
Petit bateau Coulé ;)

Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: ["A0", "A1", "A2", "B0"]
Ingrid,
Où voulez-vous tirer:
B1
Manqué!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: ["A0", "A1", "A2", "B0"]
tirs manqués: []
Julianne,
Où voulez-vous tirer:
B1
Touché!
Petit bateau Coulé ;)

Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: ["A0", "A1", "A2", "B0", "B1"]
Ingrid,
Où voulez-vous tirer:
B2
Manqué!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: ["A0", "A1", "A2", "B0", "B1"]
tirs manqués: []
Julianne,
Où voulez-vous tirer:
B2
Touché!
Petit bateau Coulé ;)
Grand bateau Coulé ;)


Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: ["A0", "A1", "A2", "B0", "B1", "B2"]
Ingrid,
Où voulez-vous tirer:
B3
Manqué!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: ["A0", "A1", "A2", "B0", "B1", "B2"]
tirs manqués: []
Julianne,
Où voulez-vous tirer:
B7
Position invalide !

Ingrid à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: []
tirs manqués: ["A0", "A1", "A2", "B0", "B1", "B2", "B3"]
Ingrid,
Où voulez-vous tirer:
B3
Vous avez déjà visé ici!

Julianne à votre tour:
A|_|_|_|_|_|
B|_|_|_|_|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

tirs réussis: ["A0", "A1", "A2", "B0", "B1", "B2"]
tirs manqués: []
Julianne,
Où voulez-vous tirer:
B3
Touché!
Petit bateau Coulé ;)
Grand bateau Coulé ;)


Touché coulé! Fin du jeu:
 Bravo Julianne, vous avez gagné la partie!
 Grille joueur1: Ingrid
A|X|X|X|_|_|
B|X|X|X|X|_|
C|_|_|_|_|_|
D|_|_|_|_|_|
E|_|_|_|_|_|
 |0|1|2|3|4|

 Grille joueur2: Julianne
A|O|O|O|_|_|
B|O|O|O|O|_|
C|S|S|S|_|_|
D|_|_|_|_|_|
E|S|S|S|S|_|
 |0|1|2|3|4|

Souhaitez-vous recommencer la partie?

        Tapez 'O'(pour continuer) ou 'N' (pour finir la partie).
N

C:\Users\ingri\Documents\SoftwareEngineerRubyProject-Ingrid-Moukala>