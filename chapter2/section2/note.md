# Exercises
## 2.2-1
Express the function $ n^3/1000 - 100n^2 - 100n + 3 $ in terms of $ \theta $-notation   
A: $ \theta(n^3) $

## 2.2-2 Selection Sort
### Write code  
[Selection sort implementation] (./chapter2/section2/selection_sort.rb)

### Loop invariant  
$i$ : step of loop  
$j$ : size of remeining list   
$ i + j = n $

### Why does it need to run for only the first n - 1 elements?
At the $ n - 1 $ step, the last element and the $n-1$ element are aldready compared and sorted accordingly.

### The best case running time
When the list is already sorted,   
$ \sum\limits_{i=0}^{n-2} n - i $  
$ = n + (n - 1) + (n - 2) + ... + 2 $  
$ = n \times (n - 1) - \sum\limits_{i=0}^{n-2}i $  
$ = n^2 - n - (n - 2) \times (n - 1) / 2 $  
$ = n^2 - n - (n^2 - 3n + 2)/2$  
$ = \frac 1 2 n^2 + \frac 1 2 n - 1 $   
$ \approx \theta (n^2) $

### The worst case running time
$ \sum\limits_{i=0}^{n-2} n - i + 2 $  
$ = \frac 1 2 n^2 + \frac 1 2 n - 1 + (n - 1) \times 2$  
$ = \frac 1 2 n^2 - \frac 3 2 n - 3 $  
$ \approx \theta (n^2) $

