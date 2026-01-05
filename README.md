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

### 3. Repo Klasörüne Girme
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

**Hazırlayan:** Halo Dayı  
**Tarih:** Ocak 2026