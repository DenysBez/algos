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
                     j:i-1;
                     while[(j >= 0) and (ilist[i] < ilist[j]); j-:1];
                     if[j < (i-1);
                         ilist:leftShift[ilist;i;(j+1)];
                       ];
            ;i+:1];
            $[incr=2;incr:1;incr:floor (incr * (5.0 % 11))];
         ];

    :ilist;
};
