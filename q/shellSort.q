leftShift:{[ilist; curPos; newPos]
    $[count[ilist] > 1;
        [curElem:ilist[curPos];
            res:(ilist _ curPos);
        
            ilist:(newPos#ilist),(curElem),((newPos - count[res])#res)
        ];

        :ilist
     ]
};

//in progress
shellSort:{[ilist]
    incr: floor (count[ilist] % 2);
    
    while[incr > 0;
            i:incr;
            while[i < count[ilist];
                     j:i;
                     while[(j > 0) and (ilist[j] < ilist[j-i]);
                           ilist:leftShift[ilist;i;(i-j)];
                     j-:i];
            ;i+:incr];
            $[incr=2;incr:1;incr:floor (incr * (5.0 % 11))];
         ];

    :ilist;
};

