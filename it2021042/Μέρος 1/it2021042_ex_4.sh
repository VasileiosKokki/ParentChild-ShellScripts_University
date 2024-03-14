#!/bin/bash
#Gia thn 1h periptosi otan o xrhsths mas dinei san 1o argument to string incr, me mia epanalipsi for i in $(seq 2 $#), dhladh gia i apo 2 mexri to plhthos ton arithmon pou dinei o xrhsths + 1 (pou einai to incr h dec), elegxoume an to 2o argument einai arithmos (0-9), me to ^ leme oti ksekinaei me enan arithmo 0-9, eno me to {1,} orizoume to kato orio me 1 dhladh toulaxiston mia monada (0-9) eno afhnoume to pano orio keno dhladh oti theloume (monades,dekades,ekatontades...). Ean to deutero argument einai ontos arithmos tote grafoume se ena proxeiro arxeio to deutero argument kai meta kanoume shift kata 1, sinepos to 2o argument ginetai to 1o kai to 3o argument ginetai pleon to 2o. Etsi se kathe epanalipsi perniountai ena ena ta arguments sto proxeiro, ksekinontas apo to 2o mexri to teleutaio argument. An prokipsei oti kapoio argument den einai arithmos tote diagrafoume ta periexomena tou proxeirou, enhmeronoume ton xrhsth oti edose lathos input kai kanoume exit. An kai mono an ola ta arguments plhn tou 1ou einai arithmoi, tote kanoume sort to proxeiro me vash thn aksia tou kathe arithmou kai h sort emfanizei thn taksinomhmenh lista sto stdout. Telos adeiazoume to proxeiro.
#Gia thn 2h periptosi isxioun ta idia me thn 1h perptosi me thn monh diafora oti o xrhsths prepei na dosh san 1o argument to string dec kai h taksinomhsh ektos apo to flag -n exei kai to -r, to opoio kanei antistrofh taksinomhsh, dhladh se fthinousa seira.
#An den isxiei kamia apo tis 2 periptoseis (oute incr oute dec san proto argument) tote stelnoume minima ston xrhsth gia na ton enhmerosoume oti edose lathos input.


if [[ $1 = "incr" ]]
  then

	for i in $(seq 2 $#)
	  do

            if [[  $2 =~ ^[0-9]{1,} ]]
    	      then
      	        echo "$2" >> temp.txt
      	        shift 1
  	      else
		> temp.txt
		echo "Only Numbers"
    	        exit 1
  	    fi
         done

         sort -n temp.txt

         > temp.txt





elif [[ $1 = "dec" ]]
  then

        for i in $(seq 2 $#)
          do

            if [[  $2 =~ ^[0-9]{1,} ]]
              then
                echo "$2" >> temp.txt
                shift 1
              else
		> temp.txt
	  	echo "Only Numbers"
                exit 1
            fi
         done

         sort -n -r temp.txt

         > temp.txt


else
  echo "First argument should be "incr" or "dec" for sorting type"
fi
