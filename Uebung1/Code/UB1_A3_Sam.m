%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Computer-Orientierte Mathematik I    %
%				  %
%  Authoren:			  %
%	Nicolas Lehmann		  %
%	Samanta Scharmacher		  %
%				  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#UB1 A3

function binNum=dez2bin(z,b)
		binNum=zeros(1,b);	#erstelle Ausgabe-Vektor
		i=b;		#LaufIndex
		while(and(z>=0,i>0))
			binNum(1,i)= mod(z,2);		#Berechne den Rest von tempZ/2
			z=floor(z/2);			#Berechne tempZ=tempZ/2 
			i--;				#nächste Stelle
		end
		if (z>0)					#fehler abfangen
			binNum=ones(1,b)*(-1); 		#Wenn nicht reinpasst, dann alles -1 --> ist Sinnvoll?
		end
end
#Funktion zur Darstellung von Binärzahlen mit Vorzeichenbit
function dualVec = dual1(z,b)
	#Initialisiere AusgabeVector
	dualVec=zeros(1,b);
	#prüfe ob positiv oder negativ ist und füge dem entsprechend das Vorzeichenbit 1 vorne heran
	if (z<0)
		dualVec(1,1)=1;
		#rechne nun den betrag in binär um
		z=z*-1; #da z=-a -->-a*-1=a 
		
	end
	dualVec(1,2:b)=dez2bin(z,b-1);	 # wir haben nur noch b-1 Bits zur Darstellung von z übrig	
	#füge nun die errechnete Zahl z 
	
	
	#nun rechne den Betrag von z in binär um
	#(1): checke ob Zahl größer als 0 ist
	#(2): rechne Zahl in Binär um
	#(3): schneide von Vorne ab, wenn nicht hinein passt.
	
	#Erstelle schonmal Ausgabevektor
	dualVec
	
end


#Function zur Umrechnung in Binärzahl mit Zweierkomplement
function dualVec = dual2(z,b)
	#prüfe ob pos oder negativ. 
	
	#rechne den Betrag von z in bin um
	#Wenn pos --> fertig
	#Wenn negativ --> flippe Bits und addiere 1 hinzu
	#Gebe aus
	
end