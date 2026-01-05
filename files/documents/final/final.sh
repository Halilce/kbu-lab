#!/bin/bash

echo "Selamun Aleyküm, Final Projesine Hoşgeldiniz!"
echo ""
echo "IP Numarası:"
hostname -I | awk '{print $1}'