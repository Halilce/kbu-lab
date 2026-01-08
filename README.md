# Kali Linux Bash Script Laboratuvarı

## Amaç
Öğrencilerin bash script mantığını ve temel Linux komutlarını öğrenmeleri için hazırlanmış basit laboratuvar uygulamasıdır.

## Kurulum Adımları

### 1. Masaüstünde Final Klasörü Oluşturma
```bash
cd ~/Desktop
mkdir final
cd final
```

### 2. GitHub Reposunu Klonlama
```bash
git clone --depth 1 --filter=blob:none --sparse https://github.com/Halilce/kbu-lab.git
```

**# 1. Git cache'den dosyayı kaldır (yerel dosya kalır)**
git rm --cached hash.txt

**# Veya klasör için**
git rm -r --cached Desktop/Halil/

**# 2. .gitignore'a ekle**
echo "hash.txt" >> .gitignore

**# Veya nano ile düzenle**
nano .gitignore

**# 3. Değişiklikleri kaydet**
git add .
git commit -m "Dosya gizlendi"
git push

**### 3. Repo Klasörüne Girme**
```bash
cd kbu-lab
```

### 4. Belirli Klasörü Seçme (İsteğe Bağlı)
Eğer sadece belirli bir klasörü indirmek isterseniz:
```bash
git sparse-checkout set [klasor-adi]
```

**Örnek:**
```bash
git sparse-checkout set lab1
```

## Tek Komutta Tüm İşlemler
```bash
cd ~/Desktop && mkdir final && cd final && git clone https://github.com/Halilce/kbu-lab.git && cd kbu-lab
```

## Komut Açıklamaları

| Komut | Açıklama |
|-------|----------|
| `cd ~/Desktop` | Masaüstü dizinine git |
| `mkdir final` | "final" adında klasör oluştur |
| `git clone --depth 1` | Sadece son commit'i indir (hızlı) |
| `--filter=blob:none` | Gereksiz dosyaları atlayarak indir |
| `--sparse` | Seçici indirme özelliğini aktif et |
| `git sparse-checkout set` | Belirli klasörü seç |

## Laboratuvar Çalışması
Kurulum tamamlandıktan sonra:
1. İlgili script dosyalarını inceleyin
2. Komutları tek tek çalıştırarak test edin
3. Kendi scriptlerinizi oluşturun

---

## Ek Bilgiler

### 1. Script Çalıştırma ve Dosya İzinleri (chmod)

#### Script Çalıştırma Yöntemleri
```bash
# Yöntem 1: İzin vererek çalıştırma (Önerilen)
chmod +x script.sh
./script.sh

# Yöntem 2: Doğrudan bash ile
bash script.sh

# Yöntem 3: sh ile
sh script.sh
```

#### Dosya İzinleri
```bash
# İzinleri görüntüleme
ls -l dosya.sh

# Çıktı örneği: -rwxr-xr-x
# r = read (okuma)
# w = write (yazma)
# x = execute (çalıştırma)
```

#### chmod Kullanımı
```bash
# Kullanıcıya çalıştırma izni ver
chmod +x dosya.sh

# Tüm izinleri ver
chmod 777 dosya.sh

# Sadece sahibine tüm izinler
chmod 700 dosya.sh

# Okuma ve çalıştırma izni
chmod +rx dosya.sh
```

#### İzin Numaraları
| Numara | İzin | Açıklama |
|--------|------|----------|
| 7 | rwx | Okuma, Yazma, Çalıştırma |
| 6 | rw- | Okuma, Yazma |
| 5 | r-x | Okuma, Çalıştırma |
| 4 | r-- | Sadece Okuma |
| 0 | --- | İzin Yok |

---

### 2. Nano ile Metin Düzenleme

#### Nano'yu Açma
```bash
# Yeni dosya oluşturma veya düzenleme
nano dosya.sh

# Root yetkisiyle açma
sudo nano dosya.sh
```

#### Nano Kısayolları
| Kısayol | İşlev |
|---------|-------|
| `Ctrl + O` | Kaydet (Save) |
| `Ctrl + X` | Çıkış (Exit) |
| `Ctrl + K` | Satırı kes |
| `Ctrl + U` | Yapıştır |
| `Ctrl + W` | Ara (Search) |
| `Ctrl + \` | Bul ve değiştir |
| `Ctrl + G` | Yardım menüsü |
| `Alt + U` | Geri al (Undo) |
| `Alt + E` | Yinele (Redo) |

#### Örnek Kullanım
```bash
# 1. Dosya aç
nano merhaba.sh

# 2. İçeriği yaz
#!/bin/bash
echo "Selamun Aleyküm"

# 3. Kaydet: Ctrl+O, Enter
# 4. Çık: Ctrl+X
```

---

### 3. Metin Okuma Komutları

#### cat - Dosya İçeriğini Göster
```bash
# Tüm içeriği göster
cat dosya.txt

# Satır numaralı göster
cat -n dosya.txt

# Birden fazla dosyayı birleştir
cat dosya1.txt dosya2.txt
```

#### less - Sayfa Sayfa Okuma
```bash
# Dosyayı aç
less dosya.txt

# Kontroller:
# Space: Sonraki sayfa
# b: Önceki sayfa
# /kelime: Ara
# q: Çık
```

#### head ve tail
```bash
# İlk 10 satırı göster
head dosya.txt

# İlk 5 satırı göster
head -n 5 dosya.txt

# Son 10 satırı göster
tail dosya.txt

# Son 20 satırı göster
tail -n 20 dosya.txt

# Canlı takip (log dosyaları için)
tail -f dosya.log
```

#### grep - Metin Arama
```bash
# Dosyada kelime ara
grep "kelime" dosya.txt

# Büyük-küçük harf duyarsız arama
grep -i "kelime" dosya.txt

# Satır numarasıyla göster
grep -n "kelime" dosya.txt

# Tüm klasörde ara
grep -r "kelime" ~/Desktop/

# Kelime kaç kez geçiyor (satır sayısı)
grep -c "kelime" dosya.txt

# Alternatif: wc ile satır sayma
grep "kelime" dosya.txt | wc -l

# Kelime toplam kaç kez geçiyor (aynı satırda birden fazla olabilir)
grep -o "kelime" dosya.txt | wc -l
```

---

### 4. IP Adresi ve Ağ Sorgulamaları

#### IP Adresini Öğrenme
```bash
# Yöntem 1: hostname komutu
hostname -I

# Yöntem 2: ip komutu (Detaylı)
ip addr show

# Yöntem 3: Sadece IPv4
ip -4 addr show

# Yöntem 4: ifconfig (Eski yöntem)
ifconfig
```

#### Ağ Bilgileri
```bash
# Aktif ağ arayüzlerini göster
ip link show

# Belirli arayüzün bilgisi
ip addr show eth0

# Routing tablosunu göster
ip route show

# DNS sunucularını göster
cat /etc/resolv.conf
```

#### Ağ Bağlantı Testleri
```bash
# Ping testi
ping -c 4 google.com

# Port tarama
nmap localhost

# Ağ bilgilerini göster
nmcli device show

# Açık portları göster
netstat -tuln

# Uzak Sunucu: Nmap ile port tarama (Önerilen)
nmap yalova.edu.tr

# Uzak Sunucu: Yaygın portları hızlı tara
nmap -F yalova.edu.tr

# Uzak Sunucu: Belirli port aralığını tara
nmap -p 1-1000 yalova.edu.tr

# Uzak Sunucu: Detaylı servis bilgisiyle
nmap -sV yalova.edu.tr

# Uzak Sunucu: Tüm portları tara (yavaş)
nmap -p- yalova.edu.tr

# Uzak Sunucu: Telnet ile tek port kontrolü
telnet yalova.edu.tr 80
telnet yalova.edu.tr 443

# Uzak Sunucu: nc (netcat) ile
nc -zv yalova.edu.tr 80
nc -zv yalova.edu.tr 443

```

#### Dış IP Adresi
```bash
# Dış IP'yi öğren
curl ifconfig.me

# veya
wget -qO- ifconfig.me

# Detaylı bilgi
curl ipinfo.io
```

---

### 5. Dizin İşlemleri

#### Temel Dizin Komutları
```bash
# Bulunduğun dizini göster
pwd

# Ana dizine git
cd ~

# Bir üst dizine git
cd ..

# Önceki dizine geri dön
cd -

# Belirli dizine git
cd /home/kali/Desktop
```

#### Dizin Oluşturma ve Silme
```bash
# Tek dizin oluştur
mkdir yeni_klasor

# İç içe dizinler oluştur
mkdir -p proje/src/main

# Birden fazla dizin oluştur
mkdir klasor1 klasor2 klasor3

# Boş dizin sil
rmdir klasor

# Dolu dizin sil (DİKKAT!)
rm -r klasor

# Zorla sil (onay istemez)
rm -rf klasor
```

#### Dizin İçeriğini Listeleme
```bash
# Basit listeleme
ls

# Detaylı listeleme
ls -l

# Gizli dosyalarla birlikte
ls -la

# Boyut bilgisiyle
ls -lh

# Tarihe göre sırala
ls -lt

# Alt dizinlerle birlikte
ls -R
```

#### Dizin Kopyalama ve Taşıma
```bash
# Dizin kopyala
cp -r kaynak_klasor hedef_klasor

# Dizin taşı
mv eski_klasor yeni_klasor

# Dizin yeniden adlandır
mv eski_ad yeni_ad
```

#### Dizin Arama
```bash
# İsme göre dizin ara
find . -type d -name "klasor_adi"

# Boş dizinleri bul
find . -type d -empty

# Belirli boyuttaki dizinleri bul
du -sh */ | sort -h
```

#### Dizin İzinleri
```bash
# Dizin izinlerini göster
ls -ld klasor

# Dizin ve içeriğine izin ver
chmod -R 755 klasor

# Dizin sahibini değiştir
chown -R kullanici:grup klasor
```

#### Pratik Dizin İşlemleri
```bash
# Dizin boyutunu öğren
du -sh klasor

# Disk kullanımını göster
df -h

# Detaylı liste ile
ls -la

# Sadece gizli dosyaları göster
ls -d .*

# Ağaç yapısında göster (tree kuruluysa)
tree klasor

# Tree ile (tüm gizli dosyalar dahil)
tree -a

# Son değiştirilen dosyaları bul
find klasor -type f -mtime -7
```

#### Pratik Resim Açma
```bash
# Masaüstündeki resmi aç (çift Tıklama Mantığı)
xdg-open ~/Desktop/resim.png

# Tam yol ile (çift Tıklama Mantığı)
xdg-open /home/kali/Downloads/foto.jpg

# Yöntem 4: Firefox ile
firefox resim.jpg
```

#### Pratik HASH Oluşturma
```bash
# Tek hash analizi
hashid '5f4dcc3b5aa765d61d8327deb882cf99'
# Detaylı bilgi
hashid -m '5f4dcc3b5aa765d61d8327deb882cf99'
# Dosyadan okuma
hashid -m hashes.txt

---

# Tüm formatları listele
john --list=formats

# Hash dosyası oluştur (hash.txt)
echo '5f4dcc3b5aa765d61d8327deb882cf99' > hash.txt
# Format belirterek kır
john --format=Raw-MD5 hash.txt
# Sonuçları göster
john --show --format=Raw-MD5 hash.txt

---

# Incremental mode (brute force)
john --incremental hash.txt
# Belirli karakter seti ile
john --incremental=Digits --format=Raw-MD5 hash.txt
# Maksimum uzunluk belirtme
john --incremental --max-length=6 hash.txt

---

# /etc/shadow formatında hash
# Format: kullanıcı:$6$salt$hash
echo 'admin:$6$rounds=5000$saltsaltsal$hash_değeri' > shadow.txt
# Kır
john --wordlist=/usr/share/wordlists/rockyou.txt shadow.txt
# Sonuçları göster
john --show shadow.txt

---

# Rockyou wordlist'i kullan
john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-MD5 hash.txt

# Özel wordlist
john --wordlist=/home/user/wordlist.txt --format=Raw-MD5 hash.txt
```
---

## Örnek Uygulamalar

### Örnek 1: Basit Bilgi Script
```bash
nano sistem_bilgi.sh
```
```bash
#!/bin/bash
echo "=== Sistem Bilgileri ==="
echo "Kullanıcı: $(whoami)"
echo "Dizin: $(pwd)"
echo "IP Adresi: $(hostname -I | awk '{print $1}')"
echo "Tarih: $(date '+%d/%m/%Y %H:%M:%S')"
```
```bash
chmod +x sistem_bilgi.sh
./sistem_bilgi.sh
```

### Örnek 2: Dizin Uygulaması
```bash
cd ~/Desktop
nano script.sh

#!/bin/bash
mkdir -p ~/Desktop/Halil
touch ~/Desktop/Halil/12345.txt
grep "Halil" hack.txt > ~/Desktop/Halil/12345.txt
mkdir -p ~/kbu-lab/project
cp -r ~/Desktop/Halil ~/kbu-lab/project/

chmod +x script.sh
./script.sh
```

### Örnek 3: Dizin Organizasyonu
```bash
#!/bin/bash
echo "Proje yapısı oluşturuluyor..."
mkdir -p ~/Desktop/proje/{src,docs,tests}
cd ~/Desktop/proje
echo "# Proje" > README.md
echo "Dizinler oluşturuldu!"
ls -R
```

---

**Hazırlayan:** Öğr. Gör. Halil Arslan
**Tarih:** Ocak 2026  
**İletişim:** Yalova Üniversitesi - Veritabanı, Ağ Tasarımı ve Yönetimi Bölümü - Kurumsal Bilişim Uzmanlığı Programı