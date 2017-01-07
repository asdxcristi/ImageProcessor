function img_out = inverse_mapping(img_in, T)

Tinvers=1/(T(1,1)*T(2,2)-T(1,2)*T(2,1))*[T(2,2) (-1)*T(1,2);(-1)*T(2,1) T(1,1)];#calculam valorile matricei T^(-1) aka Tinvers
im=img_in;#primim matricea imaginii ca parametrul img_in al functiei

diago=round(sqrt(size(im)(1)^2+size(im)(2)^2));#calculam diagonala imaginii


for x=-diago:diago#pornim de la -diago si mergem pana la diago pentru a putea desena in intregimea intoarsa
	for y=-diago:diago#pornim de la -diago si mergem pana la diago pentru a putea desena in intregimea intoarsa
		x_in=x*Tinvers(1,1)+y*Tinvers(1,2);#calculam coordonata x a pixelului curent din matricea de inceput

		y_in=x*Tinvers(2,1)+y*Tinvers(2,2);#calculam coordonata y a pixelului curent din matricea de inceput
		

		if(x_in>=1 && y_in>=1)#verificam daca coordonatele apartin marimii matricii
			img_out(x+diago+1,y+diago+1)=bilerp(im,x_in,y_in);#bagam pixelul in noua matrice
		endif
	endfor
endfor


img_out(:,all(img_out==0))=[];#eliminam toate liniile	
img_out(~any(img_out,2),:)=[];#si coloanele pline de 0

img_out=mat2gray(img_out);#transformam matricea intr-un din care se poate forma o noua imagine


endfunction
