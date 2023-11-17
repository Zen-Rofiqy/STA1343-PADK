DATA tugas; 
INPUT city smoking lungcancer count;
DATALINES;
0 1 1 126
0 1 0 100
0 0 1 35
0 0 0 61
1 1 1 908
1 1 0 688
1 0 1 497
1 0 0 807
2 1 1 913
2 1 0 747
2 0 1 336
2 0 0 598
3 1 1 235
3 1 0 172
3 0 1 58
3 0 0 121
4 1 1 402
4 1 0 308
4 0 1 121
4 0 0 215
5 1 1 182
5 1 0 156
5 0 1 72
5 0 0 98
6 1 1 60
6 1 0 99
6 0 1 11
6 0 0 43
7 1 1 104
7 1 0 89
7 0 1 21
7 0 0 36
;
RUN;

PROC LOGISTIC DATA = tugas descending; weight count;
MODEL lungcancer = city smoking/rsquare lackfit;
RUN;