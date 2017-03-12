/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains 
  product,sum = integer  

predicates % adalah variable yang telah di tentukan dalam suatu pernyataan/fakta yang ada
  add_em_up(sum,sum,sum) - procedure (i,i,o) % nama variable harus diawali huruf besar atau garis bawah(_)
  multiply_em(product,product,product) - procedure (i,i,o)% mendeklarasikan goal-nya yaitu input,input dan output

clauses % clauses(berisi semua fakta dan aturan)

  add_em_up(X,Y,Sum):-
	Sum=X+Y.
  multiply_em(X,Y,Product):-
	Product=X*Y.

goal % GOAL(tujuan akhir-nya)
  add_em_up(32,54,Sum). %dimana outputnya adalah sum=86 ditemukan solusi dari pertanyaan berapa kh Sum-nya ?
