#!/bin/bash
#Xrhsimopoioume thn entolh file me flag $1 * oste na emfanistoun oi tipoi olon ton arxeion mesa sto directory pou mas dinei o xrhsths. Me pipe dinoume san input to output ths entolhs file $1 * sthn awk '{print $2}' h opoia apo kathe grammh pairnei mono thn 2h leksh, dhladh tou tipous ton arxeion kai oxi apo poio directory einai. Me mia pipe dinoume san input to output ths awk '{print $2}' sthn sort oste na taksinomhsei tous tipous ton arxeion oste na mporesoume na xrhsimopoihsoume me mia akoma pipe thn entolh uniq -c pou emfanizei mono apo mia fora kathe tipo arxeio pou vrhke kai to poses fores to vrike. Telos, me mia pipe xrhsimopoioume thn entolh sort -n -r, h opoia taksinomei ta apotelesmata ths entolhs uniq-c me vash ton arithmo (pou emfanisthke kathe tipos) kai se fthinousa seira




file $1 * | awk '{print $2}' | sort | uniq -c | sort -n -r


