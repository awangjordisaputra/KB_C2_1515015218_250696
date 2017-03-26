DOMAINS		% mendeklarasikan tipe variable/argumen suatu predikat
nama,jender,pekerjaan,benda,alasan,zat = symbol % tipe variable/argumen suatu predikat
umur=integer % variable suatu argumen umur = integer
PREDICATES	% adalah variable yang telah di tentukan dalam suatu pernyataan/fakta yang ada
nondeterm orang(nama, umur, jender, pekerjaan) % memiliki lebih dri 1 kemungkinan pada predikat (orang)nama,umur,jender,pekerjaan
nondeterm selingkuh(nama, nama)	% memiliki lebih dari 1 kemungkinan pada predikat(selingkuh)nama,benda
terbunuh_dengan(nama, benda) %relasi dari terbunuh_dengan objek nama,benda
terbunuh(nama) %relasi dari terbunuh objek nama
nondeterm pembunuh(nama)	%memiliki lebih dari 1 predikat(pembunuh objek nama 
motif(alasan)	%relasi dari motif pembunuhan argumen alasan
ternodai(nama, zat)	%ternodai dari predikat nama,zat
milik(nama, benda)	%meiliki dari predikat nama.benda
nondeterm cara_kerja_mirip(benda, benda)	%memiliki lebih dari 1 cara kerja pada predikat benda
nondeterm kemungkinan_milik(nama, benda)	%memiliki lebih dari 1 kemungkinan pada predikat nama,benda
nondeterm dicurigai(nama)		%memiliki lebih dari 1 yang di curigai pada predikat nama
/* * * Fakta-fakta tentang pembunuhan * * */
CLAUSES		% clauses(berisi semua fakta dan aturan)
orang(budi,55,m,tukang_kayu).  %predikat orang yaitu budi memiliki umur 55 prekerjaan tukang kayu
orang(aldi,25,m,pemain_sepak_bola).	%predikat orang aldi memiliki umur 25 pekerjaan pemain bola
orang(aldi,25,m,tukang_jagal).	%predikat orang aldi memiliki umur 25 pekerjaan tukang jagal
orang(joni,25,m,pencopet).	%predikat orang joni memiliki umur 25 pekerjaan mencopet
selingkuh(ina,joni).		%predikat selingkuh objek ina selingkuhan joni
selingkuh(ina,budi).		%predikat selingkuh objek ina selingkuhan budi
selingkuh(siti,joni).		%predikat selingkuh objek siti selingkuhan joni
terbunuh_dengan(siti,pentungan).	%predikat siti terbunuh dengan pentungan
terbunuh(siti).		%siti telah dibunuh
motif(uang).		%uang sebagai motif pembunuhan
motif(cemburu).		%cemburu sebagai motif pembunuhan
motif(dendam).		%dendam sebagai motif pembunuhan
ternodai(budi, darah).	%budi ternodai oleh darah
ternodai(siti, darah).	%siti ternodai oleh darah
ternodai(aldi, lumpur).	%aldi ternodai oleh lumpu
ternodai(joni, coklat).	%joni ternodai oleh coklat
ternodai(ina, coklat).	%ina ternodai oleh coklat
milik(budi,kaki_palsu).	%budi memiliki kaki palsu
milik(joni,pistol).	%joni memiliki pistol
/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan).	%predikat kaki palsu cara kerja yang mirip bisa di gunakan sebagai pentungan
cara_kerja_mirip(balok, pentungan).		%balok cara kerja yang mirip bisa sebagai pentungan
cara_kerja_mirip(gunting, pisau).		%gunting cara kerja yang mirip pisau
cara_kerja_mirip(sepatu_bola, pentungan).	%sepatu bola cara kerja yang mirip pentungan
kemungkinan_milik(X,sepatu_bola):-		%predikat kemungkinan variable x sepatu bola
orang(X,_,_,pemain_sepak_bola).			%predikat orang variable x kemungkinan pemain sepak bola
kemungkinan_milik(X,gunting):-			%predikat kemungkinan_milik variable X pemilik gunting
orang(X,_,_,pekerja_salon).			%predikat orang variable x pekerja_salon
kemungkinan_milik(X,Benda):-			%predikat kemungkinan_milik variable x benda yang di miliki
milik(X,Benda).					%predikat mili variable x dan benda
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):- 		%variable X yang di curigai
terbunuh_dengan(siti,Senjata) ,		%siti terbunuh_dengan senjata
cara_kerja_mirip(Benda,Senjata) ,	%mencari benda yang cara kerja nya mirip dengan senjata
kemungkinan_milik(X,Benda).		%kemungkinan variable x pemili benda
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-		%variable x kemungkinan predikat yang dicurigai
motif(cemburu),		%predikat motif pembunuhan karna cemburu
orang(X,_,m,_),		%predikat orang variable x dengan m
selingkuh(siti,X).	%siti selingkuh dengan X
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-		%variable x kemungkinan predikat yang dicurigai
motif(cemburu),		%predikat motif pembunuhan karna cemburu
orang(X,_,f,_),		%predikat orang variable x dengan f
selingkuh(X,Lakilaki),	%perempuan selingkuh dengan laki"
selingkuh(siti,Lakilaki).	%siti selingkuh dengan laki"
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-		%variable x kemungkinan predikat yang dicurigai
motif(uang),		%predikat motif pembunuhan disebabkan uang
orang(X,_,_,pencopet).	%variable x orang yang di copet oleh pencopet
pembunuh(Pembunuh):-	%predikat mencari pembunuh
orang(Pembunuh,_,_,_),	%predikat orang yang membunuh
terbunuh(Terbunuh),	%predikat orang yang dibunuh/terbunuh
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),	%pembunuh predikat yang dicurigai
ternodai(Pembunuh,Zat),	%pembunuh ternodai oleh zat
ternodai(Terbunuh,Zat).	%yang terbunuh ternodai oleh zat 
GOAL 	% GOAL tujuan akhir
pembunuh(X).	%predikat pembunuh variable X adalah budi