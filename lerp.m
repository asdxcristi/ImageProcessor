function value = lerp(v, x)

	MarimeInterval=length(v);
#Verificam si iesim din functie daca x-u' primit nu corespunde(este in afara intervalului sau intervalul este de fapt un element
	if(x<1 || x>MarimeInterval || MarimeInterval==1)
		value=0;
		return;
	endif
	
	x1=floor(x);#Capat stanga interval
	x2=ceil(x);#Capat dreapta interval

	if(x1==x2)#Daca x este un numar fix,luam direct valoarea din v,fara s-o mai calculam
		value=v(x1);
		return;
	endif
#Calculam matematic valoarea punctului x folosind ec dreptei intre doua puncte
	value=(x-x1)*(v(x2)-v(x1))/(x2-x1)+v(x1);

endfunction
