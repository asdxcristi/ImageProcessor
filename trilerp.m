function value = trilerp(stack, row, col, level)

	leveljos=floor(level);#calculam nivelele intre care se afla nivelul level
	levelsus=ceil(level);#care se afla nivelul level pe care-l cautam

	value=lerp([stack(row,col,leveljos) stack(row,col,levelsus)],1+level-floor(level));#interpolam cele 2 puncte de coordonate row si col din cele doua nivele(leveljos si levelsus)



endfunction
