#!/bin/bash

read -p "SHA256 hash değerini girin: " hash_value
echo "$hash_value" > /tmp/target_hash.txt
hashcat -m 1400 -a 0 /tmp/target_hash.txt /usr/share/wordlists/rockyou.txt
hashcat -m 1400 /tmp/target_hash.txt --show
rm /tmp/target_hash.txts