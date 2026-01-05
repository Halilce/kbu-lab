#!/bin/bash

echo "Selamun Aleyküm, Final Projesine Hoşgeldiniz!"
echo ""
echo ""
echo "=== Sistem Bilgileri ==="
echo "Kullanıcı: $(whoami)"
echo "Tarih: $(date '+%d/%m/%Y')"
echo "Saat: $(date '+%H:%M:%S')"
echo ""

# Doğrudan hesaplama
sonuc=$(( ($(date '+%Y') - 6) / 5 ))

echo "Sonuç: $sonuc"