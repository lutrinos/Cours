#import "@local/physique:0.1.0": *
#import "@preview/bob-draw:0.1.0": render

#show: doc => template(doc)

#titleb[Introduction à l'électricité]

= Historique

(Voir poly)

= Mouvements de porteurs de charge

== Electrisation

Phénomène qui permet de faire apparaître des charges par frottement ou déplacement, qui vont notemment appliquer des forces en utilisant la force de Coulomb:
$ arw(f)_(1->2) = 1/(4pi epsilon_0) (q_1 q_2)/(M_1 M_2)^3 arrow(M_1 M_2) $

Avec $M_1$, $M_2$ les positions des particules, $q_1$, $q_2$ leur charge.

«D'un point de vue, on a $1/(4 pi epsilon_0)$»

La force de Coulomb peut être attractive ou répulsive suivant le produit des charges.

== Notion de charge électrique

La charge électrique est dîte:
- Scalaire, c'est un nombre (et pas un vecteur)
- Conservative, la quantité totale de charge dans un système fermé reste la même
- Invariante, quel que soit le référentiel, la charge aura la même mesure
- Quantifiée, $q = plus.minus Z e $ avec $Z$ un entier, et $e$ la charge élémentaire ($approx 1.6 dot 10^(-19)$)
  Les échanges de charges ne sont pas continus, on ne peut pas ajouter ou retirer moins de $e$ charge électrique. 
- Extensive, on peut prendre un système, le sub-diviser en sous-systèmes,
  chacun ayant sa propre charge, et la charge du système sera la sommes charges des sous-systèmes.
- Signé, le choix du signe en lui même est arbitraire et est une convention. Les électrons ont une charge négative, et les protons ont une charge positive.

== Porteurs de charge

On a différents moyens de transporter des charges:
- Les électrons dans les métaux qui se déplacent dans les lattices.
- les ions (anions ou cations) permettent d'assurer la conduction dans les solutions
- Les électrons dans le plasma (milieu ionisé)
- Dans les semi-conducteurs:
  - Par des électrons qui se déplacent et qui crée des charges négatives (dopés N)
  - Par des trous (manque d'électrons) qui se déplacent et qui crée des charges positives (dopés P)

Les porteurs de charges sont soumis à des mouvements:

== Mouvement microscopique ou agitation thermique

N'importe qu'elle particule va être soumis à un mouvement d'agitation thermique. Plus la température est élevée, plus l'agitation est "intense".

Ce mouvement est désordonné et nul en moyenne. Il va créer des micro-courants de manière constante, mais on ne peut pas l'utiliser pour faire transiter de l'énergie à l'échelle macroscopique.

On reviendra sur ce mouvement en Thermodynamique.

== Mouvement d'ensemble

On parle de mouvement d'ensemble quand on a un même déplacement pour de nombreuses particules.

On va s'intéresser plus particulier aux mouvements d'ensemble d'origine électrique.

Si on place de nombreuses charge dans un même champ électrique, toutes les charges subiront le même mouvement #sym.arrow mouvement d'ensemble électrique.

$ arw(f)_(1->2) = q_2 underbrace((1/(4 pi epsilon_0) q_1/(M_1 M_2)^3) arrow(M_1 M_2), arrow(E)(M_2)) $
$ arw(f)_(1->2) = q_2 arrow(E)(M_2) $

On pose $arw(E)(M_2)$ le champ électrique en $M_2$.
On va principalement utiliser les mouvement résultant de ce genre de champs.

= Courant électrique

== Définition

#def[Courant électrique]: Le déplacement des charges électriques dans un fil sous l'action d'un champ électrique

#figure(canvas({
  import draw: *

  line((-0.5, 1.3), (0.5, 1.3), mark: (end: "straight"), name: "E")
  content("E.50%", $arw(E)$, anchor: "south", padding: 3pt)

  line((-3, -1), (3, -1))
  line((-3, 0.8), (3, 0.8))

  point((0, 0), value: $q > 0$, color: yellow)
  line((0, -0.2), (1, -.2), mark: (end: "straight"), name: "f", stroke: yellow)
  content("f.end", $arw(f) = q arrow(E)$, anchor: "west")

  line((0, -0.5), (1.5, -0.5), mark: (end: "straight"), name: "v", stroke: red)
  content("v.end", $arw(v)$, anchor: "north-west")
}))

== Sens conventionnel

Le courant possède un sens conventionnel arbitraire: il est opposé au sens des électrons

#figure(canvas({
  import draw: *

  line((-0.5, 1.3), (0.5, 1.3), mark: (end: "straight"), name: "E")
  content("E.50%", $arw(E)$, anchor: "south", padding: 3pt)

  line((-3, -1), (3, -1))
  line((-3, 0.8), (3, 0.8))

  point((0, 0), value: $e$, color: yellow)
  line((0, -0.2), (-1, -.2), mark: (end: "straight"), name: "f", stroke: yellow)
  content("f.end", $arw(f) = q arrow(E)$, anchor: "east")

  line((0, -0.5), (-1.5, -0.5), mark: (end: "straight"), name: "v", stroke: red)
  content("v.end", $arw(v)$, anchor: "north-east")

  line((1, 0), (2.5, 0), mark: (end: "straight"), stroke: (dash: "dashed"), name: "sens")

  content("sens.end", [sens conventionnel \ du courant], anchor: "west")
}))

== Intensité

On appelle la grandeur $I$ l'intensité du courant électrique, exprimée par
la mesure du débit des particules.
C'est à dire, le nombre de charge qui traverse une section $S$ du fil, par unité de temps.

#let dq = $dif q$

On peut donc définir $I$ par:
$ I = (dif q)/(dif t) $

Avec $dif q$ la quantité de charges ayant traversé la section, et $dif t$ l'interval de temps.

#warn[
  L'intensité peut-être négative! \
  Si les électrons ne se déplacent pas dans le sens prévu, l'intensité mesurée sera négative (débit en sens inverse).
]

== Ordre de grandeur des intensités

On peut travailler avec une très large gamme d'intensité:
- À la maison: $approx 10 "A"$
- En électronique (transistors, circuits intégrés, capaciteurs): du pA à $approx 10 "mA"$
- Dans l'industrie électrique: du kA au centaines de kA.

= Tension et potentiel

== Définition

#def[Tension]: Différence de potentiel entre deux points sur un circuit. On mesure la tension d'un point par rapport à un point de référence (le port COM sur un voltmètre).

On note $U_(B A)$ la tension de $A$ vers $B$, avec:
$ U_(B A) = V_B - V_A = -U_(A B) $


#align(center, render(```

     -------------------->
         +--------+
  A *----|        |----* B
         +--------+
  <--------------------
```))

#move(dx: 20em, dy: -11em, $U_(B A)$)
#move(dx: 20em, dy: -4.5em, $U_(A B)$)

== Ordre de grandeur des tensions

- Potentiel d'action (nom donné à la tension en biologie...): $75 "mV"$
- Piles électriques: quelques volts
- Tension du secteur: de $120$ à $250$ V
- Réseau de distribution: $500$ V, $10 "kV"$, $125 "kV"$
- Foudre: $100 "MV"$

== Références de potentiels, Masse et Terre

#def[Masse]: origine des potentiels (le point de référence dit plus haut)

#def[Terre]: conducteur Terre auxquels sont reliées les carcasses des appareils pour des raisons de sécurités souvent pris comme masse

On se sera souvent tenté de prendre la Masse à la Terre.
Quand tout les éléments sont reliés à la Terre, tout ces éléments ont déjà un potentiel commun.

#warn[Il faut faire bien attention quand on place la Terre:
on peut court-circuiter des éléments en la plaçant à deux endroits à la fois ] 

#align(center, render(```
       .-----.       
  +----|     |------+
  |    '-----'      |
.-+-.             .-+-.
|   |             |   |
|   |             |   |
'-+-'             '-+-'
  |                 |
  '-----------------+
                   _|_
                    -
  ```))

Si on place une autre terre:

#align(center, render(```
Court circuit
  Entre les deux masses
   |
   V
   .      .------.       
  ||-+----|      |----+
   ' |    '------'    |
   .-+-.            .-+-.
   |   |            |   |
   |   |            |   |
   '-+-'            '-+-'
     |                |
     '----------------+
                     _|_
                      -
  ```))

Par contre, on peut:

#align(center, render(```
          .------.       
     +----|      |----+
     |    '------'    |
   .-+-.            .-+-.
   |   |            |   |
   |   |            |   |
   '-+-'            '-+-'
     |                |
     +----------------+
    _|_              _|_
     -                -
  ```))

= Approximation des régimes quasi-stationnaires (#smallcaps[ARQS])

#def[Régime quasi-stationnaire]: 

== Régime continu

#def[Régime continu]: Toutes les grandeurs (électriques) sont constantes au cours du temps:
1. Toutes les intensités
2. Toutes les tensions

Par exemple, dans un régime continu, si on mesure la tension entre deux dipôles, elle restera la même durant l'entièreté de la vie du circuit.

== Régime variable

#def[Régime variable]: Grandeurs électriques variables au cours du temps

== ARQS

La question va être: dans un régime variable, peut-on continuer à appliquer les lois valides dans un régime continu?

Si on change un paramètre dans un circuit, l'information ne se propage pas de manière instantané. Il y aura donc un temps de propagation entre la source des variations et le reste du circuit. \
On va comparer deux temps:
- $tau$, le temps de propagation de l'information dans le circuit
- $T$, le temps caractéristique du régime variable

On va se placer dans l'approximation des régimes quasi-stationnaires quand $tau << T$

Autre manière de le voir: les signaux électriques (électromagnétiques donc) se propagent à la vitesse de la lumière.
On peut donc utiliser une notion de distance plutôt que de temps:
- $L = c tau$, la longueur du circuit
- $lambda = c T$, La longueur caractéristique du circuit

On se place dans l'ARQS quand $L << lambda$.

En pratique, en électricité, on l'applique tout le temps.

== Régime continu, permanent, ou transitoire

Deux grandes catégories de régimes:
1. Stationnaire / permanent
2. Transitoire

Un régime sera dit stationnaire ou permanent si les *caractéristiques du signal* seront constantes au cours du temps.

Par exemple: si on a un signal (intensité ou tension à un point du circuit) sinusoïdale, défini donc par:

$ s(t) = S cos(omega t + phi) $

Avec $S$ l'amplitude, $omega$ la pulsation et $phi$ la phase initiale.

Le signal est trivialement variable, mais
si ces caractéristiques restent constantes, il sera dit stationnaire/permanent.

En général, un signal avec une période et une amplitude constante sera dit stationnaire.

Un régime continu est stationnaire, mais un régime stationnaire ne sera pas toujours continu.

Tout ce qui n'est pas stationnaire ou permanent sera dit transitoire.

#def[Temps caractéristique de charge du condensateur]: ordre de grandeur du régime transitoire de charge du condensateur

= Lois de Kirchhoff

== Terminologie des circuits


#align(center, render(```
  A  .---.      B    .---.       C
  *--| X |------*----|   |------* 
  |  '---'      |    '---'.----'|
  |           .-+-.     .-+-.   |
  |           |   |    /   /    |
  |           '-+-'   '-+-'     |
  |             |      /        |
  |             |.----+         |
  |      .---.  |     .---.     |
D *------|   |--*-----|   |-----* F 
  |      '---'  E     '---'     | 
  |        .---.   G   .---.    |
  +--------|   |---*---|   |----+
           '---'       '---'
```))

#def[Dipôle]: Un  élément qui a deux bornes \
  Exemple: $X$

#def[Nœud]: Point où sont connectés plus de deux dipoles ($>= 3$) \
  Exemples: $B, C, D, E, F$

#def[Branche]: Portion de circuit entre deux nœuds successifs \
  Exemples: $B A D, E F, C F, G D$

#def[Maille]: Ensemble de branches partant d'un nœud pour revenir à ce nœud, *sans paser deux fois par la même branche*. \
En clair: on part d'un point, et on fait une boucle pour revenir au même point. \
  Exemples: $E B C F, D A B E, E B C, E C F$

#note[Un même circuit a plusieurs représentation équivalentes. Utiliser celle qui marche le mieux pour soi.]

== Loi des nœuds

Dans un régime continu:

#resultb[*La somme des intensités sortant d'un nœud est égale à la somme des intensités entrantes*

$ sum_k epsilon_k i_k = 0 $

Avec: $ epsilon_k = cases(1 "si ik arrive", -1 "si ik part") $

]

#align(center, render(```
  I2  I3
   \  |
    V ^
     \|
I1 ->-* N
     /|\
    ^ V ^
   /  |  \
  I6  I5  I4
  ```))

$ i_1 + i_2 + i_4 + i_6 = i_3 + i_5 $

== Loi des mailles

Dans un régime continu et dans une maille:

#resultb[*La somme des potentiels dans le sens de la maille est égale à la somme des potentiels dans le sens inverse à la maille.*
  $ sum_k epsilon_k u_k = 0 $
Avec:
  $ epsilon_k = cases(+1 "si uk dans le sens de la maille", -1 "si uk dans le sens opposé à la maille") $
]

TODO: graphique

$ u_1 + u_4 + u_7 = u_2 + u_3 + u_5 + u_6 $
$  $

== Lois de Kirchhoff

#def[Lois de Kirchhoff]:
1. Lois des nœuds
2. Lois des mailles
