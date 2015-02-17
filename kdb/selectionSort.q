swap:{[ilist;aIdx;bIdx]
    tmp:ilist[aIdx];
    ilist[aIdx]:ilist[bIdx];
    ilist[bIdx]:tmp;
    :ilist;
}
   
selectionSort:{[ilist]
    i:0;
    minidx:0;
    while[i< (count[ilist] - 1); 
              [j:i; 
                    while[j < count[ilist];
                          if[ilist[j] < ilist[minidx]; minidx:j];
                          j+:1];              
              ];
          //only if changes
          ilist:swap[ilist;i;minidx]; minidx:i;
          i+:1];
    :ilist;
}


