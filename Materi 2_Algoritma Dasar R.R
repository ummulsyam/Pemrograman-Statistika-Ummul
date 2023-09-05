##Rangkuman Pem.Stat Materi 2
#01 Pengenalan R
number <- 1 #Numerik
class(number)
typeof(number)

complex=22-4i #Complex
class(complex)
typeof(complex)

karakter="Mata Kuliah Pemrograman Statistika" #Karakter
class(karakter)
typeof(karakter)

logikal= TRUE #Logical
class(logikal)
typeof(logikal)

#02 Penamaan Objek
pem.stat2=c("Nur","Annisa","Ummul","Vivi","Fahry","Fajar") #contoh benar
pem.sta1 =c(1,2,3,4,5,6)
2pem.stat=c("Nur","Annisa","Ummul","Vivi","Fahry","Fajar") #contoh salah

#03 Mode Objek Data (Teoritis pada rangkuman)
#tanpa entry variable 
demografi = function(){
  nama = randomNames::randomNames(1)
  umur = sample(c(20:60),1)
  tinggi = rnorm(1, mean=150, sd=20)
  tinggi = round(tinggi, 1)
  berat = rnorm(1, mean=40, sd=5)
  berat = round(berat, 1)
  data = c(nama, umur, tinggi, berat)
  return(data)
}
demografi()
#04 Objek Standar Data
vektor= c(2, 1, 5, 3, 4) #vektor


data.matriks=c(1, 2, 5, 4, 2, 2, 3, 3, 5, 3, 1, 0, 4, 3, 0, 6)#matriks
matrix=matrix(data = data.matriks, nrow = 4, ncol= 4)

data.array=c(1:24) #Array
ini.array<-array(data.array,dim=c(2,3,3))

fc <- factor(c("SD", "SMA", "SMP", "SMP", "SD", "SMA", "SD", "SMP")) #array
print.default(fc) #atau
fc

x1 <- c(1, 3, 2, 6, 4) #Data.frame
v1 <- c("a", "A", "c", "d", "E")
data1 <- data.frame(x1, v1)

contoh.list<- list(vektor, matrix, ini.array, fc, data1) #list
contoh.list
contoh.list[5]


#05 Akses Elemen Terhadap Objek Data
vektor[3] #menggunakan operator [i], sebagai vektor (urutan ke-berapa)
vektor[[1]] #menggunakan operator [[i]], berdasarkan posisi (posisi ke-5 ada angka berapa)
data1$v1 #menggunakan operator $, berdasarkan nama

#06 Operator Aritmetika (Teoritis pada rangkuman)
p = 11%%2

#07 Nilai - Nilai Khusus (NA, Inf, NaN)
x <- c(1.5, 2.3, NA) #Operasi dalam NA
mean(x)

is.na(x) #deteksi NA pada data
sum(is.na(x)) #hitung jumlah NA pada data

#08 Operasi pada Vektor
##Pendefinisian vektor
u=(1:4)
v=(6:9)

##Operasi
u+v #Tambah
u*v #Kali

##Aturan Recycling (???)
vec1 <- c(1,2,3,4)
vec2 <- c(10,20)
result <- vec1+vec2

#09 Operasi Pada Matriks
##Pendefinisian Matriks
matriks.A=matrix(1:8,nrow=2,ncol=4)
matriks.B=matrix(3:14,nrow=4,ncol=3)
matriks.C=matrix(data=c(8,9,2,4,13,16,17,10,9),nrow=3,ncol=3)

matriks.A%*%matriks.B #perkalian matriks
solve(matriks.C) #invers matriks
t(matriks.B) #Tranpose
diag(matriks.C) #Ambil diagonal 
eigen(matriks.C) #Matriks bujur sangkar, kolom dan baris sama

#10 Operasi pada Karakter
char.1=c("Kelompok 2 Pemrograman Statistika") #Karakter string diapit oleh quotes
char.2=c("Kelas Paralel 2")
hit.char=nchar(char.1) #hitung banyak karakter dalam string
panggil.char1=substr(char.1,1,8) #Panggil string urutan 1-8 dari variabel char.1)
panggil.char2=substring(char.1,9) #Panggil string 9-akhir dari variabel char.1)
paste(char.1,"di",char.2)

#11 Struktur Algoritma: Pemilihan/Percabangan
##if
if(2 > 3){
  # Jika kondisi benar
  print("Kondisi tersebut benar")
} else {
  # Jika kondisi salah
  print("Kondisi tersebut salah")
}

##ifelse
p <- c(TRUE, TRUE, FALSE, FALSE)
ifelse(p, "benar", "salah")

c <- seq(0, 100)
cd <- seq(0:100)
a <- seq(2,10)
b <- seq(2:10)

##switch
Centre <- function(x, type) {
  switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim= .1))
}

#12 Struktur Algoritma:Loops
##for
ipk = c(0:4)
for(i in ipk){
  print(i)
}

##while
berhenti <- FALSE; maxiter <- 1000; i <- 1
while (i<- 1 && !berhenti) {
  if (i>=maxiter) {
    berhenti <- TRUE
  } else {
    print("Ulang lagi")
    i<-i+1
  }
}

##Repeat
readinteger <- function(){
  n <- readline(prompt="Please, enter your ANSWER: ")
}
repeat {
  response <- as.integer(readinteger());
  if (response == 42) {
    print("Well done!");
    break
  } else print("Sorry, the answer to whatever the question MUST be 42");
}

