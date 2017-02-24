# Exercises
## 2.3-1 MergeSort
[3, 9, 26, 38, 41, 49, 52, 57]  
[3, 26, 41, 52] [9, 38, 49, 57]  
[3, 41] [26, 52] [38, 57] [9, 49]  
[3] [41] [52] [26] [38] [57] [9] [49]

## 2.3-3 
When $ n = 2 $ ... ($ a $)

$ 2 \ln2 = 2 $ => true

When $ n = k\ (k > 2)$ and if $ T(k) = k \ln k $ is true, ... ($ b $)  
$ k \ln k = 2T(k/2) + k $  
$ T(k/2) = \frac{k}{2}(\ln k - 1)$  $ = \frac{k}{2} \ln \frac{k}{2} $

($a$) is proved so ($b$) is recursively proved, thus   
$ T(n) = n \ln n $ is true at any $n \ (n=2^k)$

## 2.3-4 InsertionSort
[sort.hs](./section1/sort.hs)

## 2.3-5 BinarySearch
### Code
[binary_search.hs](./binary_search.hs)

### The worst-case running time
$A$: Array of int  
$N$: size of A  
$a_k$: array to search at step $k$  
$n_k$: size of $a_k$  

$ n_{k+1} = \frac{1}{2}n_k$ (the worst case)  
$ n_1 = N $  
$ n_k = \frac{N}{2^{k-1}} $  

At the last step in the worst case, $n_k$ would be 1,  
$ \frac{N}{2^{k-1}} = 1 $  
$ N = 2^{k-1} $  
$ k = lg N + 1 $  
$ => \theta(lgN) $
