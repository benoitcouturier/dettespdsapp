#!/bin/bash
# Flemme d'ecrire les commande a chaque fois donc
git pull
read -p "Appuyer sur une touche pour continuer ..."
mvn clean install
read -p "Appuyer sur une touche pour continuer ..."
cp target/X-MALL-APP.war /var/lib/tomcat8/webapps/X-MALL-APP.war
