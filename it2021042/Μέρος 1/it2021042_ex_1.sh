#!/bin/bash
#((Xrhsimopoioume if...then...fi gia na paroume periptoseis. Mesa sthn if vazoume $# pou einai to plhthos ton parametron pou kanei input o xrhsths kai -ne 1 dhladh na mhn iso me 1. Sthn epomenh if vazoume !dhladh na mhn isxiei h sxesh pou akolouthei. h sxesh pou akolouthei einai -d $1 dhladh h proth parametros tou xrhsth na einai directory. Telos afou exoume figei apo ta 2 ifs me alla logia exoumekanei elegxous))<-den xreiazetai sthn periptosh mas. Me thn entolh find vriskoume ola ta arxeia kai tous fakelous tou sistimatos. Epeidh kati tetoio den mas endiaferei sthn periptosi mas, xrhsimopoioume ta eksis flags. me to $1 tou leme na psaksei sto 1o argument pou tou dinetai apo ton xrhsth os path, -type d na emfanisei mono ta directories, -empty ta directories auta na einai adeia, -not -path '*/.*' ta directories auta na mhn einai krimena, 2>/dev/null ta tixon errors pou emfanisei h find an o xrhsths dosei lathos input na ta kanei append sth null, dhladh na ta apokripsei apo ton xrhsth. 


 
#	if [ $# -ne 1 ]
#	then
#	  echo "1 argument required"
#	  exit 1
#	fi


#	if [ ! -d $1 ]
#	then
#	  echo "Argument isn't a directory"
#         exit 1 <-- den xreiazetai is diploun efoson ta sfalmata ta apokriptoume me to 2>/dev/null
#	fi



find $1 -type d  -empty -not -path '*/.*' 2>/dev/null



