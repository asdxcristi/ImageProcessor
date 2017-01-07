function img_out = forward_mapping(img_in, T)

im=img_in;#primim matricea imaginii ca parametrul img_in al functiei

diago=sqrt(size(im)(1)^2+size(im)(2)^2);#calculam diagonala imaginii


		for x=1:size(im)(1)
			for y=1:size(im)(2)
				x_out=round(x*T(1,1)+y*T(1,2)+diago);#calculam noua coordonata x a pixelului curent
				
				y_out=round(x*T(2,1)+y*T(2,2)+diago);#calculam noua coordonata y a pixelului curent

				if(x_out>=1 && y_out>=1)#vefiricam daca coordonatele apartin marimii matricei
					img_out(x_out,y_out)=im(x,y);#bagam pixelul in noua matrice
				endif
			endfor
		endfor

	img_out(:,all(img_out==0))=[];#eliminam toate liniile
	img_out(~any(img_out,2),:)=[];#si coloanele pline de 0

	img_out=mat2gray(img_out);#transformam matricea intr-un din care se poate forma o noua imagine
	imwrite(img_out,'forward_mapping.png');#pe langa faptul ca o returnam, o si scriem in fisierul forward_mapping.png

endfunction
