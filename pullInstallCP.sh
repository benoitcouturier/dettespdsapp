#!/bin/bash
# Flemme d'ecrire les commande a chaque fois donc
git pull
echo "Appuyer sur Entrée pour continuer..."
read a
mvn clean install
echo "Appuyer sur Entrée pour continuer..."
read a
cp target/X-MALL-APP.war /var/lib/tomcat8/webapps/X-MALL-APP.war
