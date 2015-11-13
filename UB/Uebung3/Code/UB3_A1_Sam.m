%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Computer-Orientierte Mathematik I    %
%				  %
%  Authoren:			  %
%	Nicolas Lehmann		  %
%	Samanta Scharmacher		  %
%				  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function erg=runden(x,L)
	
	t=0;
	isNeg=0;
	#prüfe, ob x negativ ist. wenn ja dann mach sie positiv und merke dir, dass sie mal negativ war!
	if (x<0)
		x*=-1;
		isNeg=1;	
	end;
	#bringe x in Normalform
	while((x<1) && (x<0.1))
		t++;
		x*=10;
	end;
	
	#shifte bis L stellen eine Ganzzahl ist
	x*=10^(L);
	#caste mit int64 --> schneide dabei die Nachkommastellen ab. (uintXX rundet auch gleich richtig :) )
	xCuted=uint64(x); 	#uint64 rundet schon richtig xD --> kann ja nicht negativ sein, da wir oben den Fall abfangen, dass x negativ ist.
	#mache aus der Ganzenzahel wieder eine Kommazahl (double)
	x=double(xCuted)/10^(L)/10^t;
	#falls x mal negativ war, dann mach sie wieder negativ!!!
	if (isNeg==1)
		x*=-1;	
	end;
	erg=x;
end;

runden(0.14,1)
runden(0.0014,1)
runden(0.0015,1)
runden(0.0015325,4)

runden(-0.14,1)
runden(-0.0014,1)
runden(-0.0015,1)
runden(-0.0015325,4)