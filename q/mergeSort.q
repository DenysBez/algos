//Firstly we divide the list into sublists each containing onle one element after that we merge sublists.

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

mergeSort:{[iList]
    if[count[iList] > 1;[
                            iList:merge[ mergeSort[(floor count[iList]%2)#iList]; 
                                         mergeSort[(neg (ceiling count[iList]%2))#iList] 
                                       ];
                        ];
      ];
    :iList;
};
