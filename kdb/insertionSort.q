shiftElemPos:{[ilist; curPos; newPos]
    $[count[ilist] > 1;
        [curElem:ilist[curPos];
            res:(ilist _ curPos );
            :(newPos#test),(curElem),((newPos - count[res])#res)
        ];
        :ilist
     ]
};

//in progress
insertionSort:{[ilist]
    i:1;
    while[i < count[ilist];
             j:i-1;
             while[(j > 0) and (ilist[i] < ilist[j]); j-:1];
             if[j < (i-1);
                 ilist:shiftElemPos[ilist;i;j];
               ];
         ;i+:1];
    :ilist;
};
