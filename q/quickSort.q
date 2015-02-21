swap:{[ilist;aIdx;bIdx]
    if[count[ilist] >= 2;
        [tmp:ilist[aIdx];
         ilist[aIdx]:ilist[bIdx];
         ilist[bIdx]:tmp;
        ]];
    :ilist;
};

partition:{[ilist]
    pivotIdx: floor (count[ilist]%2)-1;
    i:0;
    j:count[ilist]-1;
    
    while[i <= j; 
          while[ilist[i] < ilist[pivotIdx];i+:1];
          while[ilist[j] > ilist[pivotIdx];j-:1];
          if[i <= j; 
             swap[ilist;i;j];
             i+:1;
             j-:1];
         ];
    :i;
};

quickSort:{[ilist]
    result:();
    partitionIdx:partition[ilist];

    result,:quickSort[(partitionIdx - 1)#ilist];

    result,:quickSort[(neg partitionIdx)#ilist];

    :result;
};
