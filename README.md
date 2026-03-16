# .github
Saya akan hasilkan **README.md** yang lengkap dan profesional untuk projek **Fairbase** oleh **Sazwanismail**. README ini akan merangkumi semua komponen yang telah dibincangkan: BigQuery, MongoDB, React, Node.js, GitHub Actions, dan lain-lain.

```markdown
# Fairbase

**Fairbase** ialah platform data digital dan cryptocurrency yang menggabungkan analisis data berskala besar dengan BigQuery, storan fleksibel dengan MongoDB, dan antara muka pengguna moden dengan React. Projek ini dibangunkan untuk memudahkan pengurusan aset digital dan data coin dengan automasi penuh melalui GitHub Actions.

---

## 🧰 Teknologi Utama

| **Bahagian**   | **Teknologi**                                                                                     |
|----------------|---------------------------------------------------------------------------------------------------|
| Frontend       | React, HTML, CSS, JavaScript                                                                      |
| Backend        | Node.js, Express                                                                                  |
| Database       | BigQuery (Google Cloud), MongoDB (Atlas/Self-hosted)                                              |
| DevOps         | GitHub Actions, Git, GitHub Pages (dokumentasi)                                                   |
| Lain-lain      | Python (skrip ETL), Bash/PowerShell (pemasangan .NET)                                             |

---

## 📁 Struktur Direktori

```
Fairbase/
├── .github/
│   └── workflows/               # GitHub Actions CI/CD pipelines
│       ├── deploy-all.yml
│       └── data-pipeline.yml
├── BigQuery&DataCoin/           # Skrip berkaitan BigQuery
│   ├── setup_bigquery.py
│   └── load_to_bigquery.py
├── Data&Digital/                 # Data mentah dan terproses
│   ├── raw_data/
│   └── processed/
├── Python All Language/          # Skrip Python pelbagai guna
│   ├── setup_mongodb.py
│   └── load_to_mongodb.py
├── backend/                       # Node.js/Express backend
│   ├── routes/
│   ├── models/
│   ├── server.js
│   └── package.json
├── codespaces-react/              # React frontend
│   ├── public/
│   ├── src/
│   └── package.json
├── scripts/                       # Skrip pembantu (pemasangan, dll.)
│   ├── dotnet-install.sh
│   └── dotnet-install.ps1
├── docs/                           # Dokumentasi tambahan
│   └── rare-hounds-behave.md
├── .gitignore
├── LICENSE                         (Lesen MIT)
└── README.md                       (Fail ini)
```

---

## ⚙️ Keperluan Sistem

- **Node.js** 18 atau lebih baru
- **Python** 3.10 atau lebih baru
- **Git**
- **Docker** (jika menggunakan devcontainer)
- **Akaun Google Cloud** (dengan BigQuery API diaktifkan)
- **Akaun MongoDB Atlas** (pilihan, jika menggunakan cloud)

---

## 🚀 Panduan Persediaan

### 1. Klon Repositori

```bash
git clone https://github.com/Sazwanismail/Fairbase.git
cd Fairbase
```

### 2. Persediaan Backend

```bash
cd backend
npm install
cp .env.example .env   # Isi pemboleh ubah persekitaran (lihat di bawah)
```

**Pemboleh Ubah Persekitaran (`.env`)**:
```
GOOGLE_PROJECT_ID=sazwan-fairbase
GOOGLE_APPLICATION_CREDENTIALS=./path/to/service-account.json
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/fairbase
PORT=5000
```

### 3. Persediaan Frontend

```bash
cd ../codespaces-react
npm install
cp .env.example .env
```

**Pemboleh Ubah Persekitaran Frontend**:
```
REACT_APP_API_URL=http://localhost:5000
```

### 4. Persediaan Database

#### BigQuery
- Pastikan projek Google Cloud anda aktif dan API BigQuery diaktifkan.
- Muat naik kredential akaun perkhidmatan ke fail yang dirujuk dalam `GOOGLE_APPLICATION_CREDENTIALS`.
- Jalankan skrip setup:
  ```bash
  cd BigQuery&DataCoin
  pip install -r requirements.txt  # Anda perlu buat requirements.txt
  python setup_bigquery.py
  ```

#### MongoDB
- Sediakan kluster MongoDB (Atlas atau lokal).
- Dapatkan connection string dan masukkan ke `MONGODB_URI`.
- Jalankan skrip setup:
  ```bash
  cd "../Python All Language"
  pip install pymongo
  python setup_mongodb.py
  ```

### 5. Menjalankan Aplikasi Secara Lokal

**Terminal 1 – Backend**:
```bash
cd backend
npm start
# Server akan berjalan di http://localhost:5000
```

**Terminal 2 – Frontend**:
```bash
cd codespaces-react
npm start
# Aplikasi akan dibuka di http://localhost:3000
```

### 6. Mengisi Data Contoh (Pilihan)

Jika anda ingin mengisi data contoh ke dalam BigQuery dan MongoDB, jalankan:

```bash
python BigQuery&DataCoin/load_to_bigquery.py
python "Python All Language/load_to_mongodb.py"
```

---

## 🤖 GitHub Actions

Projek ini menggunakan GitHub Actions untuk automasi:

- **Deploy All Components** (`.github/workflows/deploy-all.yml`): Diaktifkan setiap kali push ke `main`. Membina frontend dan backend, kemudian deploy ke Firebase Hosting dan Cloud Run (jika dikonfigurasi).
- **Data Pipeline** (`.github/workflows/data-pipeline.yml`): Dijadualkan setiap hari jam 2 pagi untuk mengemas kini data di BigQuery dan MongoDB.

Untuk melihat status workflow, pergi ke tab **Actions** repositori GitHub anda.

---

## 📊 Penggunaan API

Backend menyediakan endpoint berikut:

| **Endpoint**                     | **Kaedah** | **Penerangan**                          |
|----------------------------------|------------|------------------------------------------|
| `/api/health`                    | GET        | Memeriksa kesihatan server               |
| `/api/bigquery/data-coin`        | GET        | Mendapat data coin dari BigQuery         |
| `/api/bigquery/digital-assets`   | GET        | Mendapat aset digital dari BigQuery      |
| `/api/mongodb/assets`            | GET        | Mendapat aset digital dari MongoDB       |
| `/api/mongodb/assets`            | POST       | Menambah aset digital baru ke MongoDB    |

Contoh respons:
```json
[
  {
    "coin_id": "bitcoin",
    "coin_name": "Bitcoin",
    "price_usd": 50000.00,
    "volume_24h": 1000000,
    "market_cap": 1000000000,
    "timestamp": "2025-01-01T00:00:00Z"
  }
]
```

---

## 🧪 Pembangunan dengan Dev Container

Projek ini menyertakan konfigurasi **Development Container** (`.devcontainer/devcontainer.json`). Ia membolehkan anda menggunakan persekitaran pembangunan yang konsisten dalam VS Code atau GitHub Codespaces.

1. Pasang **Docker** dan **Remote - Containers** extension dalam VS Code.
2. Buka projek, kemudian `Ctrl+Shift+P` → **"Remote-Containers: Reopen in Container"**.
3. Tunggu sehingga container siap, dan anda boleh mula membangun tanpa perlu memasang dependensi secara manual.

---

## 🤝 Cara Menyumbang

Kami mengalu-alukan sumbangan daripada komuniti! Sila ikuti langkah berikut:

1. Fork repositori ini.
2. Buat branch baru (`git checkout -b fitur-anda`).
3. Lakukan perubahan dan commit (`git commit -m 'Tambah fitur X'`).
4. Push ke branch (`git push origin fitur-anda`).
5. Buka Pull Request.

Pastikan anda mengikuti panduan gaya kod dan menulis ujian jika perlu.

---

## 📄 Lesen

Projek ini dilindungi di bawah **Lesen MIT**. Sila lihat fail [LICENSE](LICENSE) untuk maklumat lanjut.

---

## 📞 Hubungi

- **Pengarang**: Sazwanismail
- **GitHub**: [@Sazwanismail](https://github.com/Sazwanismail)
- **Laman Projek**: [https://sazwan-fairbase.web.app](https://sazwan-fairbase.web.app) (jika sudah di-deploy)

---

*Terima kasih kerana menggunakan Fairbase!*
```

**Nota**: Fail README ini anda boleh terus letak di root repositori Fairbase. Jika ada sebarang perubahan atau tambahan yang dikehendaki, sila beritahu.
