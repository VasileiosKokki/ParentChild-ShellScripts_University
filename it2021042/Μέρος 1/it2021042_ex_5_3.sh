#!/bin/bash
#Xrhsimopoioume thn entolh awk '{print $1}' ~/apache.log.txt h opoia apo kathe grammh tou arxeiou apache.log.txt pairnei mono thn 1h leksh, dhladh ta ip. Me mia pipe dinoume san input to output ths awk '{print $1}' ~/apache.log.txt sthn sort oste na taksinomhsei ta ip tou txt arxeiou oste na mporesoume na xrhsimopoihsoume me mia akoma pipe thn entolh uniq -c pou emfanizei mono apo mia fora kathe ksexoristh ip pou vrhke kai to poses fores thn vrike. Telos, me mia pipe xrhsimopoioume thn entolh sort -n -r, h opoia taksinomei ta apotelesmata ths entolhs uniq-c me vash ton arithmo (tou plhthous pou emfanisthke kathe ip) kai se fthinousa seira. Ksana me mia pipe dinoume san input to output ths entolhs sort -n -r sthn awk 'NR==1,NR==10' h opoia emfanizei mono tis protes 10 grammes sinepos tis protes 10 ip. Meta kanoume ksana me mia pipe awk '{print $2}' oste na dothoun san output mono ta ips kai oxi to plhthos tous. Telos kanoume redirect me > to output sto arxeio popular_ips.txt.
#Epeita kanoume epanalipsi for i in $(seq 1 10) dhladh gia i apo to 1 mexri to 10 me vhma 1 thn entolh echo $(awk "NR==$i" popular_ips.txt) "->" $(curl --request GET https://ipapi.co/"$(awk "NR==$i" popular_ips.txt)"/country) h opoia arxika me thn awk tiponei thn i grammh apo ta popular_ips.txt kai meta tiponei to string -> eno meta tiponei to apotelesma ths entolhs curl h opoia pairnei to i-osto ip kai mas dinei piso thn xora pou vrisketai to ip. Telos me ena 2>/dev/null apokriptoume tis perittes plirofories oi opoies den mas endiaferoun kai telos me mia pipe kai mia sed  "s/Undefined//g" diagrafoume ola ta undefined strings pou mas epistrefontai.







awk '{print $1}' ~/apache.log.txt | sort | uniq -c | sort -n -r | awk 'NR==1,NR==10' | awk '{print $2}' > popular_ips.txt 


for i in $(seq 1 10)
do
	(echo $(awk "NR==$i" popular_ips.txt) "->" $(curl --request GET https://ipapi.co/"$(awk "NR==$i" popular_ips.txt)"/country)) 2>/dev/null | sed "s/Undefined//g"  


done












       	
 
   

