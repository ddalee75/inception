# inception
Salut les amis qui lissent mes codes pour inception
ces codes fonctionnent tres bien sur un VM Alphine , et la version de docker compose 1.29
si vous travaillez dans un VM ubuntu :

pour le Dockerfile de nginx:
From alphine:3.13 il faut le corriger par -> From alphine ou From alphine:3.15 (3.13 ne fonctionne pas ici, le container sera cree mais ne monte pa)

pour le Dockerfile de wordpress
From alphine:3.13 (fonctionne) par contre From alpine(ne fonctionne pas) 

moi javais tres directement en root, donc dans mon Makefile devant tous les commandes, je nai pas mis "sudo"
si vous travaillez en User normal, n oubliez pas de rajouter sudo devant les commandes dans le Makefile.


