swap:{[ilist;aIdx;bIdx]
    if[count[ilist] >= 2;
        [tmp:ilist[aIdx];
         ilist[aIdx]:ilist[bIdx];
         ilist[bIdx]:tmp;
        ]];
    :ilist;
}

//in progress
shellSort:{[ilist]
    incr: floor (count[ilist] % 2);
    
    while[incr > 0;
            i:incr;
            while[i < count[ilist];
                     j:i;
                     while[(j > 0) and (ilist[j] < ilist[j-i]);
                           ilist:swap[ilist;i;(i-j)];
                     j-:i];
                  i+:incr];
            $[incr=2;incr:1;incr:floor (incr * (5.0 % 11))];
         ];

    :ilist;
};
