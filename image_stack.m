function stack = image_stack(img, num_levels)

im=img;#primim matricea imaginii ca parametrul img_in al functiei

stack=zeros(size(im)(1),size(im)(2),num_levels);#initializam matricea tridimensionala(numarul de linii din matricea initiala x numarul de coloane din matricea initiala x numarul de nivele)

stack(:,:,1)=im;#bagam imaginea pe primul nivel

K=1/9*ones(3);#calculam blurring thingul K

for i=2:num_levels
	stack(:,:,i)=conv2(stack(:,:,i-1),K,"same");#calculam si introducem pe fiecare nivel al stackului matricile din ce in ce mai blurate(blurand nivelul anterior),dar de aceeasi dimensiune
endfor

endfunction
