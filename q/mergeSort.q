merge:{[iList;jList]
    result:();
    i:0;
    j:0;
    while[count[result] < (count[iList] + count[jList]);
             $[(i < count[iList]) and ((j >= count[jList]) or (iList[i] <= jList[j])); [result,:iList[i];i+:1];
              [result,:jList[j];j+:1]];
         ];
    :result;
};

//in progress
mergeSort:{[iList]
    if[count[iList] > 1;[
                        q:count[iList]%2;
                        iList:merge[ mergeSort[[0;q] sublist iList]; mergeSort[[q;count[iList] sublist iList]]];
                        ];
      ];
    :iList;
};
