# Exercises
## 2.3-1
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

