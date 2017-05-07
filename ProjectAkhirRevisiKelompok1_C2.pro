domains
    hasil,ciri = symbol
    Anda,name = string
    list= string*
    
predicates
   nondeterm kesimpulan(string,hasil)
   nondeterm kondisi(name,ciri)
   nondeterm jawaban(char)
   nondeterm go
   nondeterm ulang
   nondeterm anggota(list)
   nondeterm anggotaku
   nondeterm tempat(list)
   nondeterm tempatku
   
clauses
    go :-
    	nl,
      	write("======================================================================"),nl,
    	write("====================================================================="),nl,
    	write("								     	    "),nl,
	write("		SPK REKOMENDASI PEMILIHAN TEMPAT TINGGAL 	     	    "),nl,
	write("			UNTUK WILAYAH SAMARINDA			     	    "),nl,
	write("								     	    "),nl,
	write("====================================================================="),nl,
	write("	   Dimohon Untuk Menjawab Sesuai dengan pilihan yang diberikan 	    "),nl,
	write("         		1.ketik y berarti ya 			    "),nl,
	write("         		2.ketik n berarti tidak 		    "),nl,
	write("====================================================================="),nl,
	write(" 	Anggota Kelompok :					    "),nl,
	anggotaku,
	write("====================================================================="),nl,
        write("====================================================================="),nl,
        write(" Daftar Tempat Tinggal Pilihan :					    "),nl,
        tempatku,
        nl,
        write("Siapakah Nama Anda? "),
        readln(Anda),
        kesimpulan(Anda,Hasil),!,
        write(Anda," Mungkin menginginkan Tempat tinggal ",Hasil),nl.     

    go :-
        write("Maaf kami tidak bisa menentukan tempat tinggal yang anda inginkan"),nl,ulang.
    	ulang :-write("ingin ulang (y)?"),
        readchar(N),N='y',go.    


%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------

    kondisi(Anda,rumah) :-
        write("Apakah saudara ",Anda," Menginginkan Rumah (y/n) ?"),
        jawaban(Reply),
        Reply='y'.
    
    kondisi(Anda,kontrakan) :-
        write("Apakah saudara ",Anda," Menginginkan Kontrakan (y/n) ?"),
        jawaban(Reply),
        Reply='y'.
    
    kondisi(Anda,kosan) :-
        write("Apakah saudara ",Anda," Menginginkan kosan (y/n) ?"),
        jawaban(Reply),
        Reply='y'.

%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------

    kondisi(Anda,pekerja) :-
        write("Apakah saudara ",Anda," Pekerja (y/n) ?"),
        jawaban(Reply),
        Reply='y'.
    
    kondisi(Anda,keluarga1) :-
        write("Apakah saudara ",Anda," sudah berkeluarga (y/n) ?"),
        jawaban(Reply),
        Reply='y';write(Anda," adalah pekerja serta tinggal sendiri dan Mungkin menginginkan Tempat tinggal Di jalan Otto iskandardinata gang melati samarinda\n jika telah berkeluarga "),!.
    kondisi(Anda,keluarga2) :-
        write("Apakah saudara ",Anda," sudah berkeluarga (y/n) ?"),
        jawaban(Reply),
        Reply='y';write(Anda," adalah pekerja serta tinggal sendiri dan Mungkin menginginkan Tempat tinggal Di jalan pelita 2 samarinda gang melati RT.02\n jika telah berkeluarga "),!.
    kondisi(Anda,keluarga3) :-
        write("Apakah saudara ",Anda," sudah berkeluarga (y/n) ?"),
        jawaban(Reply),
        Reply='y';write(Anda," adalah pekerja serta tinggal sendiri dan Mungkin menginginkan Tempat tinggal Di jalan Remaja samarinda gang mawar RT.13\n jika telah berkeluarga "),!.
    
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
    
    kondisi(Anda,mahasiswa) :-
        write("Apakah saudara ",Anda," Mahasiswa (y/n) ?"),
        jawaban(Reply),
        Reply='y'.
    
    kondisi(Anda,dekatkampus1) :-
        write("Apakah saudara ",Anda," ingin tinggal dekat dengan kampus (y/n) ?"),
        jawaban(Reply),
        Reply='y',!;write(Anda," adalah mahasiswa dan tidak ingin tinggal dekat dengan kampus Mungkin menginginkan Tempat tinggal Di jalan pelita 4 samarinda perumahan sambutan\n jika ingin dekat dengan kampus "),!.
    kondisi(Anda,dekatkampus2) :-
        write("Apakah saudara ",Anda," ingin tinggal dekat dengan kampus (y/n) ?"),
        jawaban(Reply),
        Reply='y',!;write(Anda," adalah mahasiswa dan tidak ingin tinggal dekat dengan kampus Mungkin menginginkan Tempat tinggal Di jalan pelita 2 samarinda gang melati RT.02\n jika ingin dekat dengan kampus "),!.
    kondisi(Anda,dekatkampus3) :-
        write("Apakah saudara ",Anda," ingin tinggal dekat dengan kampus (y/n) ?"),
        jawaban(Reply),
        Reply='y',!;write(Anda," adalah mahasiswa dan tidak ingin tinggal dekat dengan kampus Mungkin menginginkan Tempat tinggal Di jalan loabakung samarinda RT.20\n jika ingin dekat dengan kampus "),!.

%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
           
   kesimpulan(Anda,"Di jalan AW syahrani samarinda perumahan Villa tamara"):-
        kondisi(Anda,rumah),
        kondisi(Anda,pekerja),
        kondisi(Anda,keluarga1).
        
   kesimpulan(Anda,"Di jalan gelatik samarinda RT.12"):-
        kondisi(Anda,kontrakan),
        kondisi(Anda,pekerja),
        kondisi(Anda,keluarga2).
        
   kesimpulan(Anda,"Di jln. M.said samarinda gang jaya RT.12"):-
        kondisi(Anda,kosan),
        kondisi(Anda,pekerja),
        kondisi(Anda,keluarga3).
  
   kesimpulan(Anda,"Di jln. Pramuka samarinda RT.25"):-
   	kondisi(Anda,rumah),
        kondisi(Anda,mahasiswa),
        kondisi(Anda,dekatkampus1).
            
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------



   kesimpulan(Anda,"Di jln. M.yamin samarinda gang pelayaran"):-
        kondisi(Anda,kontrakan),
        kondisi(Anda,mahasiswa),
        kondisi(Anda,dekatkampus2).

        
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
        

   kesimpulan(Anda,"Di jalan perjuangan samarinda gang bersama RT.30"):-
        kondisi(Anda,kosan),
        kondisi(Anda,mahasiswa),
        kondisi(Anda,dekatkampus3).

%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------
%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------%---------------------------------------------------------------------

    jawaban(Reply) :-
        readchar(Reply),
        write(Reply),nl.
        
anggotaku:-
 anggota([Anggota1,Anggota2,Anggota3]),
 write(Anggota1),
 write(Anggota2),
 write(Anggota3).
anggota(["		1. Damar Sanggara Habibie \n","		2. Fetrisye Delp \n","		3. Heri Aditya \n"]).

tempatku:-
tempat([Tempat1,Tempat2,Tempat3,Tempat4,Tempat5,Tempat6,Tempat7,Tempat8,Tempat9,Tempat10,Tempat11,Tempat12]),
 write(Tempat1),
 write(Tempat2),
 write(Tempat3),
 write(Tempat4),
 write(Tempat5),
 write(Tempat6),
 write(Tempat7),
 write(Tempat8),
 write(Tempat9),
 write(Tempat10),
 write(Tempat11),
 write(Tempat12).
tempat(["	1. jalan AW syahrani samarinda perumahan Villa tamara ","	2. jalan gelatik samarinda RT.12 \n","	3. jln. M.said samarinda gang jaya RT.12 ","		4. jln. M.yamin samarinda gang pelayaran \n","	5. jln. M.said samarinda gang jaya RT.12","		6. jalan loabakung samarinda RT.20 \n","	7. jalan Otto iskandardinata gang melati samarinda ","	8. jalan pelita 2 samarinda gang melati RT.02 \n","	9. jalan Remaja samarinda gang mawar RT.13 ","		10. jalan pelita 4 samarinda perumahan sambutan \n","	11. jalan pelita 2 samarinda gang melati RT.02","		12. jalan loabakung samarinda RT.20 \n"]).

GOAL
go.