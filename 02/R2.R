library(readxl)
library(BSDA)

## Mann-Whitney Test
# Contoh soal 1
R2 <- read_excel("R2.xlsx")
View(R2)
wilcox.test(Produktifitas ~ Grup, data = R2, paired = FALSE, alternative = 'greater')

# Latihan soal 1
sering <- c(95, 87, 77, 73, 44, 64, 68, 70, 55, 59, 67, 88, 89, 90, 52)
jarang <- c(67, 55, 51, 40, 25, 18, 34, 44, 52, 59, 54, 53)
skor <- c(sering, jarang)
grup <- c(rep("Sering", 15), rep("Jarang", 12))
dt <- data.frame(skor, grup)
wilcox.test(sering, jarang, paired = FALSE, alternative = 'greater')
wilcox.test(skor ~ grup, data = dt,
            paired = FALSE, alternative = 'less') 

# Paired Sign Test
# Contoh Soal 2
awal <- c(39, 38.5, 38.5, 37, 37, 38, 37, 38.5, 38, 38, 37, 38, 39, 37.5)
akhir <- c(38, 38.5, 37, 39, 37, 38, 38, 38, 37.5, 37, 37, 38.5, 38, 37.5)
SIGN.test(x = awal, y = akhir, alternative = "greater")

# Latihan Soal 2
sebelum <- read.delim("clipboard", header = FALSE)
sebelum <- as.vector(sebelum$V1)
sesudah <- read.delim("clipboard", header = FALSE)
sesudah <- as.vector(sesudah$V1)
SIGN.test(x = sebelum, y = sesudah, alternative = "greater")
wilcox.test(x = sebelum, y = sesudah, alternative = "greater", paired = T)


## Paired Samples Wilcoxon Test
# Contoh Soal 3
sebelum <- c(68.84, 71.16, 68.08, 71.87, 69.99, 72.20, 70.44, 67.52, 66.61, 68.84)
sesudah <- c(77.41, 76.68, 77.39, 76.10, 69.73, 68.88, 67.10, 72.62, 69.46, 70.86)
wilcox.test(sesudah, sebelum, paired = TRUE, alternative = "greater")

# Latihan Soal 3
soal3 <- read.delim('clipboard', header = T)
soal3
wilcox.test(soal3$Sebelum..X., soal3$Sesudah..Y., alternative = "two.side", paired = T)

## Spearman's rank correlation
# Contoh Soal 4
kehadiran <- c(13, 12, 15, 15, 10, 13, 15, 13, 16, 16)
nilai.ujian <- c(53, 42, 70, 69, 32, 76, 73, 45, 58, 45)
cor(kehadiran, nilai.ujian, method = 'spearman')
cor.test(kehadiran, nilai.ujian, method = 'spearman', exact = F)

# Latihan Soal 4
soal4 <- read.delim('clipboard', header = T)
soal4
cor(soal4$Nilai.tes..X., soal4$Peforma.kerja..Y., method = 'spearman')
cor.test(soal4$Nilai.tes..X., soal4$Peforma.kerja..Y., method = 'spearman', exact = F)
