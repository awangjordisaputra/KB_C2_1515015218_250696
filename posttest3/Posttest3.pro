nowarnings

predicates
	nondeterm run()
	nondeterm mengambil(symbol,symbol,symbol)
	nondeterm matakuliah(symbol)
	
clauses
  run:-
  	write("AWANG JORDI SAPUTRA"),nl,
  	write("\tPostest3"),nl,	
	readchar(G),G='_'.  	
	
	mengambil("Irfan","IntelejensiBuatan","A").
	mengambil("Komeng","IntelejensiBuatan","D").
	mengambil("Dati","IntelejensiBuatan","C").
	mengambil("Fatima","IntelejensiBuatan","B").
	mengambil("Maspion","IntelejensiBuatan","C").
	
	mengambil("Ricky","PDE","E").
	mengambil("Embang","PDE","A").
	mengambil("Salmin","PDE","D").
	mengambil("Vina","PDE","B").
	mengambil("Sondang","PDE","C").
	
	mengambil("Pamuji","SistemOperasi","D").
	mengambil("Luki","SistemOperasi","E").
	mengambil("Sadek","SistemOperasi","B").
	mengambil("Yusida","SistemOperasi","A").
	mengambil("Eka","SistemOperasi","A").
	
	matakuliah("IntelenjesiBuatan").
	matakuliah("PDE").
	matakuliah("SistemOperasi").
	
goal
	run;
	mengambil(NamaMahasiswa,"IntelejensiBuatan",_);	
	mengambil(Nama,Lulus,"A");
	mengambil(Nama,Lulus,"B");
	mengambil(Nama,Lulus,"C");
	mengambil(Nama,TidakLulus,"D");
	mengambil(Nama,TidakLulus,"E");
	matakuliah(MataKuliah);
	mengambil(NamaMahasiswa,_,_).
	