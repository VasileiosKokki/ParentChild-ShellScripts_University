#!/bin/bash
#Xrhsimopoioume thn entolh awk '{print $1}' ~/apache.log.txt h opoia apo kathe grammh tou arxeiou apache.log.txt pairnei mono thn 1h leksh, dhladh ta ip. Me mia pipe dinoume san input to output ths awk '{print $1}' ~/apache.log.txt sthn sort oste na taksinomhsei ta ip tou txt arxeiou oste na mporesoume na xrhsimopoihsoume me mia akoma pipe thn entolh uniq -c pou emfanizei mono apo mia fora kathe ksexoristh ip pou vrhke kai to poses fores thn vrike. Telos, me mia pipe xrhsimopoioume thn entolh sort -n -r, h opoia taksinomei ta apotelesmata ths entolhs uniq-c me vash ton arithmo (tou plhthous pou emfanisthke kathe ip) kai se fthinousa seira. Telos, ksana me mia pipe dinoume san input to output ths entolhs sort -n -r sthn awk 'NR==1,NR==10' h opoia emfanizei mono tis protes 10 grammes sinepos tis protes 10 ip.





awk '{print $1}' ~/apache.log.txt | sort | uniq -c | sort -n -r | awk 'NR==1,NR==10'






