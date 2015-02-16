//still in progress

selectionSort:{[ilist]
    result:();
    minidx:0;
    i:0;
    while[i< (count[ilist] - 1);
              [j:i; while[j < count[ilist];
                          if[ilist[j] < ilist[minidx]; minidx:j];
                          j:j + 1];
              
              ];
          result:result,ilist[minidx];
          ilist:((minidx#ilist),((minidx - count[ilist] - 1)#ilist));
          show ilist;
          i:i+1];    
    result;
}
