function isEqual = compare_array(A, B, abs_diff)   

%Prüft ob Elemente identisch sind mit gegebener Toleranz
isTol = ismembertol(A,B,abs_diff);

%Prüft ob alle Elemente true sind
isEqual = all(isTol,'all');
