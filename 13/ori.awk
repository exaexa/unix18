#!/bin/awk -f 
BEGIN{
	px=0; py=0; pz=0;
	fx=0; fy=0; fz=1;
	ux=0; uy=1; uz=0;
	rx=1; ry=0; rz=0;

}

/^F$/ {
	px += fx;
	py += fy;
	pz += fz;
}

/^L$/ {
	tmx = fx; tmy = fy; tmz = fz;	
	fx = -rx; fy = -ry; fz = -rz;
	rx = tmx; ry = tmy; rz = tmz;
}
/^R$/ {
	tmx = rx; tmy = ry; tmz = rz;	
	rx = -fx; ry = -fy; rz = -fz;
	fx = tmx; fy = tmy; fz = tmz;
}

/^U$/ {
	tmx = ux; tmy = uy; tmz = uz;	
	ux = -fx; uy = -fy; uz = -fz;
	fx = tmx; fy = tmy; fz = tmz;
}

/^D$/ {
	tmx = fx; tmy = fy; tmz = fz;	
	fx = -ux; fy = -uy; fz = -uz;
	ux = tmx; uy = tmy; uz = tmz;
}

/^>$/ {
	tmx = rx; tmy = ry; tmz = rz;	
	rx = -ux; ry = -uy; rz = -uz;
	ux = tmx; uy = tmy; uz = tmz;
}

/^<$/ {
	tmx = ux; tmy = uy; tmz = uz;	
	ux = -rx; uy = -ry; uz = -rz;
	rx = tmx; ry = tmy; rz = tmz;
}
END {
	print px, py, pz;
}

