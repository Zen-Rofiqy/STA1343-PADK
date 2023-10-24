## Uji Tanda
library(BSDA)
# contoh soal
soal1 <- c(93.6, 89.1, 97.7, 84.4, 97.8, 94.5, 88.3, 
           97.5, 83.7, 94.6, 85.5, 82.6)
SIGN.test(soal1, md = 97.5, alternative = "less")

# Soal Latihan 1
soal2 <- c(8.30, 9.50, 9.60, 8.75, 8.40, 9.10, 9.25,
           9.80, 10.05, 8.15, 10.00, 9.60, 9.80, 9.20, 9.30)
SIGN.test(soal2, md = 8.41, alternative = "greater")

# Soal Latihan 2
soal3 <- c(33, 19, 40, 35, 51, 41, 27, 23, 39, 21,
           41, 31, 46, 51, 34, 37, 36, 55, 52, 32)
SIGN.test(soal3, md = 45.32, alternative = "less")

## Uji Peringkat Bertanda
# Contoh Soal
soal4 <- c(3.34, 3.36, 3.21, 3.10, 3.50, 1.80, 2.58, 3.10, 3.12, 2.90,
           3.70, 3.11, 3.43, 3.25, 2.60)
wilcox.test(soal4, mu = 3.00, alternative = "two.sided", correct = FALSE)

# Soal Latihan 3
soal5 <- c(136, 103, 91, 122, 96, 145, 140, 138, 126, 120,
           99, 125, 91, 142, 119, 137)
wilcox.test(soal5, mu = 119, alternative = "less", correct = FALSE)

# Soal Latihan 4
soal6 <- c(10.5, 12, 9.8, 10, 9.9, 10.4, 10.1, 9.7, 10.3, 10.8)
wilcox.test(soal5, mu =10, alternative = "less", correct = FALSE)

## Uji Binomial
# Contoh Soal
soal7 <- binom.test(3, 20, p = 0.1, alternative = 'greater', conf.level = 0.95)
soal7

# Soal Latihan 5
soal8 <- binom.test(8, 10, p = 0.5, alternative = 'two.sided', conf.level = 0.95)
soal8

# Soal Latihan 6
soal9 <- binom.test(21, 60, p = 0.47, alternative = 'less', conf.level = 0.95)
soal9
