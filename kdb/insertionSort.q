//in progress
insertionSort:{[ilist]
    i:1;
    while[i < count[ilist];
             j:i-1;
             while[(j > 0) and (ilist[i] < ilist[j]); j-:1];
             if[j < (i-1);
                 ilist:(j#ilist),(ilist[j i]),((count[ilist] - i)#ilist);                
               ];
         ;i+:1];
    :ilist;
}

shiftElemPos:{[ilist; curPos; newPos]
    firstPart:((newPos#ilist),(ilist[curPos]);
    secondPart:();

    $[(curPos-newPos) > 1;ilist[];
    //:,(ilist[newPos]),
    lastPart:((curPos+1)-count[test])#ilist;
}
