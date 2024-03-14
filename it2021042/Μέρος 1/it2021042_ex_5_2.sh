#!/bin/bash
#Xrhsimopoioume thn entolh awk '$6 ~ "GET" || $6 ~ "POST" || $6 ~ "HEAD" || $6 ~ "PUT" || $6 ~ "DELETE" || $6 ~ "CONNECT" || $6 ~ "OPTIONS" || $6 ~ "TRACE" {print $6 "\x20" $7}' ~/apache.log.txt h opoia apo kathe grammh tou arxeiou apache.log.txt pairnei mono thn 6h kai thn 7h leksh prosthentontas ena keno anamesa tous, dhladh ta http request kai requested path.Akomh ta http requests apo to 6o argument filtrarontai me ta parapano http methods. Me mia pipe dinoume san input to output ths awk '{print $6 "\x20" $7}' ~/apache.log.txt sthn sort oste na taksinomhsei ta http request kai requested path (san mia metavlhth) tou txt arxeiou oste na mporesoume na xrhsimopoihsoume me mia akoma pipe thn entolh uniq -c pou emfanizei mono apo mia fora kathe ksexoristo http request kai requested path (metrane san ena eniaio string) pou vrhke kai to poses fores to vrhke to eniaio auto string. Telos, me mia pipe xrhsimopoioume thn entolh sort -n -r, h opoia taksinomei ta apotelesmata ths entolhs uniq-c me vash ton arithmo (tou plhthous pou emfanisthke kathe eniaio string) kai se fthinousa seira. Telos, ksana me mia pipe dinoume san input to output ths entolhs sort -n -r sthn awk 'NR==1,NR==20' h opoia emfanizei mono tis protes 20 grammes sinepos ta 20 dhmofilestera url (http request kai requested path). Telos me mia akoma pipe me thn entolh sed "s/\x22//g" afairoume ta quotation marks " apo ta urls efoson ta http requests ksekinoun me " sto log arxeio eno sto output den theloume na fenontai.






awk '$6 ~ "GET" || $6 ~ "POST" || $6 ~ "HEAD" || $6 ~ "PUT" || $6 ~ "DELETE" || $6 ~ "CONNECT" || $6 ~ "OPTIONS" || $6 ~ "TRACE" {print $6 "\x20" $7}' ~/apache.log.txt | sort | uniq -c | sort -n -r | awk 'NR==1,NR==20' |  sed "s/\x22//g"
 
 




