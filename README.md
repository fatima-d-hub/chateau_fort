# Projet de Château Fort 3D – Modélisation (Processing)

## Présentation
Ce projet consiste en la création d'une **scène 3D interactive** représentant un **Château Fort médiéval**.  
Développé avec **Processing**, il met en œuvre les concepts fondamentaux de l'informatique graphique.

Réalisé dans le cadre de l'UE *Introduction à l'Informatique Graphique* à l'Université de Limoges, ce projet permet de :  

- Générer des structures complexes (tours, murs, créneaux) **de manière procédurale**.  
- Manipuler un **environnement 3D temps réel** avec éclairage et caméra dynamique.  
- Concevoir un code **modulaire et paramétrable** pour adapter les dimensions de l'édifice.  

---

## Fonctionnalités principales

### Construction modulaire
- Architecture basée sur des **briques individuelles** pour les tours.  

### Modélisation paramétrique
- Ajustement facile de la **hauteur**, **largeur** et **distance entre les tours** via un fichier de configuration unique.

### Éléments architecturaux détaillés
- **Tours carrées** avec toits pyramidaux.  
- **Système de meurtrières et créneaux** calculé dynamiquement.  
- **Murs d'enceinte** reliant les tours avec porte principale.  

### Interactivité
- **Caméra dynamique** : rotation autour du château et zoom à la souris.  

### Environnement
- Création d’un **sol herbeux** et gestion d’un **éclairage global** (ambiant et directionnel).  

---

##  Fondements techniques
- **Moteur P3D de Processing** pour la 3D.  
- **Transformations spatiales** : `pushMatrix()`, `popMatrix()`, `translate()`, `rotate()` pour positionner chaque brique et mur.  
- **Primitives 3D** : `box()` pour les cubiques et `beginShape(TRIANGLES)` pour les toits.  
- **Trigonométrie** : calcul des coordonnées sphériques pour la gestion de la caméra (`sin`, `cos`).  

---

## Structure du projet

| Fichier | Description |
|---------|-------------|
| `chateau.pde` | Point d'entrée principal. Boucle de rendu, éclairage et caméra. |
| `configurations.pde` | Centralise toutes les variables (dimensions, taille des briques, créneaux). |
| `construireChateau.pde` | Assemble les 4 tours et les murs d'enceinte. |
| `creerTour.pde` | Construction d’une tour brique par brique avec portes et meurtrières. |
| `creerToit.pde` | Génération de la pyramide sur les tours. |
| `murEnceinte.pde` | Structure des murs reliant les tours. |
| `creerSol.pde` | Génère le sol de la scène. |

---

## Utilisation et commandes

### Lancement
1. Ouvrez **n’importe quel fichier `.pde`** dans l’IDE Processing.  
2. Cliquez sur **Run**.  

### Contrôles de la caméra
- **Clic gauche + Glisser** : faire pivoter la caméra autour du château.  
- **Molette de la souris** : zoomer / dézoomer.  

---

##  Aperçu

# ![Fatimatou](https://github.com/fatima-d-hub/chateau_fort/blob/main/git.gif)
---

##  Technologies utilisées
- **Processing 4 (Mode Java)**  
- **Librairie P3D (OpenGL)**  
- Concepts d’**informatique graphique** : matrices de transformation, géométrie 3D.  
