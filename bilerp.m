function value = bilerp(img, row, col)
#Calculam coordonatele punctelor Q11, Q12,Q21 si Q22
	rsus=ceil(row);#randul/x-ul punctelor aflate cel mai sus in matrice
	rjos=floor(row);#randul/x-ul punctelor aflate cel mai jos in matrice
	cdreapta=ceil(col);#coloana/y-ul punctelor aflate cel mai sus in matrice
	cstanga=floor(col);#randul/y-ul punctelor aflate cel mai jos in matrice	

	if(rsus>size(img)(1) || cdreapta>size(img)(2) || rjos<1 || cstanga<1)
		value=0;#verificam daca cele patru puncte exista,sau matricea/coordonatele punctului(row,col) nu permit formarea celor 4
		return ;
	endif
#Scoatem punctele Q din matricea img
	Q11=img(rjos,cstanga);
	Q12=img(rsus,cstanga);
	Q21=img(rjos,cdreapta);
	Q22=img(rsus,cdreapta);


#interpolam punctele Q11 si Q21 pentru a afla R1
R1=lerp([Q11 Q21],1+col-floor(col));#R1 il calculam ca fiind valoarea functiei intre 1 si 2 deorece consideram Q11 si Q21 valorile functiei in punctele respective
#interpolam punctele Q12 si Q21 pentru a afla R1
R2=lerp([Q12 Q22],1+col-floor(col));#R2 il calculam ca fiind valoarea functiei intre 1 si 2 deorece consideram Q12 si Q22 valorile functiei in punctele respective

value=lerp([R1 R2],1+row-floor(row));#valoarea ceruta o calculam ca fiind valoarea functiei intre 1 si 2 deorece consideram R1 si R2 valorile functiei in punctele respective


endfunction
