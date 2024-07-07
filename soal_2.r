# Yusuf

# Set data angkatan 2022
rata_rata_2022 <- 85
simpangan_standar_2022 <- 5

# Set data angkatan 2023
rata_rata_2023 <- 75
simpangan_standar_2023 <- 6

# Buat function untuk reusable, karena rumus nya sama
hitung_cv <- function(rata_rata, simpangan_standar) {
  return((simpangan_standar / rata_rata) * 100)
}

# Cek koefisien angkatan 2022
cv_2022 <- hitung_cv(rata_rata_2022, simpangan_standar_2022)

# Cek koefisien angkatan 2023
cv_2023 <- hitung_cv(rata_rata_2023, simpangan_standar_2023)

# Tampilkan ke terminal
cat("Koefisien Keragaman untuk Angkatan 2022 ->", cv_2022, "%\n")
cat("Koefisien Keragaman untuk Angkatan 2023 ->", cv_2023, "%\n")