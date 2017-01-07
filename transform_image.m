function img_out = transform_image(img_in, k)

im=img_in;#primim matricea imaginii ca parametrul img_in al functiei


stack=image_stack(im,ceil(k));#creeam stackul de imagini cu ceil(k) imagini,deoarece acesta este numarul optim de nivele pe care ar trebui sa-l creeam 
		
for x=1:size(im)(1)
	for y=1:size(im)(2)
		img_out(x,y)=trilerp(stack,x,y,k);#calculam valoarea pixelului din pozitia respectiva folosind functia trilerp
	endfor
endfor

	img_out=mat2gray(img_out);#transformam matricea intr-un din care se poate forma o noua imagine
	imwrite(img_out,'transform_image.png');
		
endfunction
