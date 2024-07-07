# Yusuf

# Import library ggplot2 untuk mendukung soal 1B
library(ggplot2)

# Definisi data sesuai tabel soal
# Untuk umur diambil angka tengah dari tiap kategori
data_usia <- data.frame(
  KATEGORI = c("18-22", "23-27", "28-32", "33-37", "38-42", "43-47", "48-52"),
  UMUR = c(20, 25, 30, 35, 40, 45, 50),
  FREKUENSI = c(257, 73, 103, 15, 36, 14, 2)
)

# Rumus median
median_usia <- median(rep(data_usia$UMUR, data_usia$FREKUENSI))

# Rumus mean
mean_usia <- sum(data_usia$UMUR * data_usia$FREKUENSI) / sum(data_usia$FREKUENSI)

# Rumus modus
modus_usia <- data_usia$UMUR[which.max(data_usia$FREKUENSI)]

# Tampilkan hasil ke terminal
cat("Median usia:", median_usia, "\n")
cat("Mean usia:", mean_usia, "\n")
cat("Modus usia:", modus_usia, "\n")

# Membuat histogram berdasarkan variabel data_usia
histogram <- ggplot(data = data_usia, aes(x = KATEGORI, y = FREKUENSI, fill = KATEGORI)) +
  geom_bar(stat = "identity", color = "black") +
  labs(title = "Histogram Usia Mahasiswa", x = "Usia", y = "Frekuensi") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_fill_brewer(palette = "Blues")

# Membuat poligon berdasarkan variabel data_usia
poligon <- ggplot(data = data_usia, aes(x = UMUR, y = FREKUENSI)) +
  geom_line(color = "red") +
  geom_point(color = "red") +
  labs(title = "Poligon Frekuensi Usia Mahasiswa", x = "Usia", y = "Frekuensi") +
  theme_minimal()

# Tampilkan plot grafik dalam bentuk image
par(mfrow = c(1, 2))

plot(histogram)
plot(poligon)