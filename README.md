# inception
Salut les amis qui lissent mes codes pour inception
ces codes fonctionnent tres bien sur un VM Alpine , et la version de docker compose 1.29

si vous travaillez dans un VM ubuntu :


pour le Dockerfile de nginx:

From alpine:3.13 il faut le corriger par -> From alphine ou From alphine:3.15 (3.13 ne fonctionne pas sur ubuntu, le container sera cree mais ne monte pas)

pour le Dockerfile de wordpress

From alpine:3.13 (fonctionne) [ From alpine(ne fonctionne pas) ]

pour le Dockerfile de mariadb 

il faut utiliser-> From alpine

Jai travialle directement en root, donc dans mon Makefile, je nai pas mis "sudo" devant les commandes.
si vous travaillez en User normal, n oubliez pas de rajouter sudo devant les commandes dans le Makefile.
  ex: sudo mkdir -p /home/tonlogin/data/website

Comme vous travaillez sur ubuntu, votre version de docker compose est 1.25.

cette version de docker compose ne cherche pas automatiquement le fichier .env

solution:

1. dans makefile 
   il faut ajouter un variable 
   ENV_FILE = ./src/.env
   
   dans la ligne pour faire docker-compose up
   => docker compose -f $(SRC) --env-file $(ENV_FILE) up --build -d

2. dans le file docker-compose.yml
   il faut ajouter a chaque service ces deux lignes : 
     
     env_file:
     
        -.env
        
        
        
c'est en aidant Loubna et Valerie que jai remarque ces problemes :) 


