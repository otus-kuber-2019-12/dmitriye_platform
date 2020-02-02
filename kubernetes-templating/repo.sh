#!/bin/bash

helm repo add library https://core.34.69.241.17.nip.io/chartrepo/library

helm push --username admin --password Harbor12345 frontend/ library
helm push --username admin --password Harbor12345 hipster-shop/ library