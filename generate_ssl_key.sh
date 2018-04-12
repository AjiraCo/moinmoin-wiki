#!/bin/bash

#Required
domain=$1
commonname=$domain
 
#Change to your company details
country=KE
state=Nairobi
locality=Nairobi
organization=ajira.world

openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 3600 \
	-nodes \
	-subj "/CN=$domain/C=$country/ST=$state/L=$locality/O=$organization"
