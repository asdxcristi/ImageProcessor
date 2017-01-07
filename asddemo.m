function asddemo()

img_rata=imread("flapping_duck.png");

img_bird=imread("flapping_bird.png");

disp("#Scalare cu 0.4")
	T=[0.4 0;0 0.4];
	asd1=inverse_mapping(img_rata,T);
	imwrite(mat2gray(asd1),'flapping_duck_mica.png');


	asd2=inverse_mapping(img_bird,T);
	imwrite(mat2gray(asd2),'flapping_bird_mica.png');	


disp("#Rotire fata de orizontala")
	T=[cos(pi) -sin(pi);sin(pi) cos(pi)];
	asd1=inverse_mapping(img_rata,T);
	imwrite(mat2gray(asd1),'flapping_duck_orizontala.png');


	asd2=inverse_mapping(img_bird,T);
	imwrite(mat2gray(asd2),'flapping_bird_orizontala.png');	

disp("#Rotatie cu 45 de grade in sens trigonometric")
	T=[cos(pi/4) -sin(pi/4);sin(pi/4) cos(pi/4)];
	asd1=inverse_mapping(img_rata,T);
	imwrite(mat2gray(asd1),'flapping_duck_45_sens_trig.png');


	asd2=inverse_mapping(img_bird,T);
	imwrite(mat2gray(asd2),'flapping_bird_45_sens_trig.png');	

endfunction
