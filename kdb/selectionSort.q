//still in progress

selectionSort:{[ilist]
    minidx:0;
    i:0;
    while[i< (count[ilist] - 1);
              [j:i; while[j < count[ilist]; 
                          if[ilist[j] < ilist[minidx]; minidx:j];
                          j:j + 1]
              ];
          i:i+1];
}
