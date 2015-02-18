selectionSort:{[ilist]
    i:0;
    while[i< (count[ilist] - 1);
              minidx:i;
              [j:i + 1;
                    while[j < count[ilist];
                          if[ilist[j] < ilist[minidx]; minidx:j];
                          j+:1];
              ];
          if[minidx <> i;
                tmp:ilist[i];
                ilist[i]:ilist[minidx];
                ilist[minidx]:tmp;
            ];
          i+:1];
    :ilist;
}
