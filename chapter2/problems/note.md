# Problems
## 2-1 Insertion sort on small arrays in merge sort
### a.
$ \theta(k^2)\ \times\ \cfrac{n}{k} 	\approx \theta(nk)$

### b.
$ \theta(n) $ take for each merge step.  
$ num_{sublist} = \cfrac{n}{k}, \cfrac{n}{2k}, \cfrac{n}{4k}, ..., 1 = \cfrac{n}{2^{j-1} k}$  
$ j $ is a number of merge steps.   
$ \cfrac{n}{2^{j-1} k} = 1$  
$ j = \lg\cfrac{n}{k} + 1$  
$ \theta(n)\ \times\ (\lg\cfrac{n}{k} + 1) \approx \theta(n\lg\cfrac{n}{k})$


### c.
when $k = \lg n $  
$ \theta(nk + n\lg\cfrac{n}{\lg n}) = \theta(n\lg n) $

if $ k = f(n) > \lg n$, the worst running becomes larger than $ \theta(n\lg n) $

### d.
This is same with Exercise 1.2-2
> Suppose we are comparing implementations of insertion sort and merge sort on the same machine. For inputs of size n, insertion sort runs in $8n^2$ steps, while merge sort runs in $64n\lg n$ steps. For which values of n does insertion sort beat merge sort?

When n <= 43, insertion sort finishes faster than merge sort.


## 2-2 Correctness of bubblesort
### a.
### b.
### c.
### d.
The worst case running time of inner loop is  
$ \sum\limits_{i=1}^{n-1} n - i = \cfrac{n(n-1)}{2} = \theta(n^2)$

## 2-3 Correctness of Horner’s rule### a. The running time
$ \theta(n)$

### b. Naive alrgorithm
```ruby
y = 0
for i in 0..n
  m = 1
  for j in 1..i
    m = m * x
  y += a * m 
```
$ \sum_\limits{i=0}^{n} a_i \cdot x^i = (n+1) + \sum_\limits{i=0}^{n} i = \theta(n^2) $

### c. loop invariant
$ y_i=a_{i+1} + a_{i+2}\cdot x + ... + a_n\cdot x^{i-1}\ = \sum_\limits{k=0}^{n-(i+1)}a_{k+i+1}\cdot x^k$

#### Initialization
$ y_{0}=0 $  

#### Maintenance
With the loop invariant, in the end of the $i$ th itereation, we have  
$ y_{i+1} = a^i + x \cdot \sum_\limits{k=0}^{n-(i+1)}a_{k+i+1}\cdot x^k = a^i\cdot x^0 + \sum_\limits{k=1}^{n-i}a_{k+i}\cdot x^{k} = \sum_\limits{k=0}^{n-i}a_{k+i}\cdot x^{k}$

#### Termination
when $i = -1$, the loop terminates.  
$ y = \sum_\limits{k=0}^{n-(i+1)}a_{k+i+1}\cdot x^k = \sum_\limits{k=0}^{n}a_{k}\cdot x^k$

## 2-4 Inverstions
### a. 
> List the five inversions of the array [2, 3, 8, 6, 1]

|$i,\ j$|$A[i],\ A[j]$|
|---|---|
|0, 4|2, 1|
|1, 4|3, 1|
|2, 3|8, 6|
|2, 4|8, 1|
|3, 4|5, 1|

### b.
> What array with elements from the set {1, 2, ..., n} has the most inversions?

the array sorted reversely has the most inversions.Any pairs $i,\ j\ (i < j)$ in it are inversions.  
$ {}_n C_2 = \cfrac{n \cdot (n-1)}{2}$

### c.
#### Observations
$[1,2,3]$  
$[1] [2,3]$ 1 step to insert 1 to []  
$[1, 2] [3]$ 1 step for insert 2 to [1]  
$[1, 2, 3]$ 1 step for insert 3 to [1, 2] 

$[1,3,2]$ (1 inversion)  
$[1] [3,2]$ 1 step to insert 1 to []  
$[1, 3] [2]$ 1 step for insert 3 to [1]  
$[1, 2, 3]$ 1 + 1 steps for insert 2 to [1, 3] 


$[2,3,1]$ (2 inversions)  
$[2] [3,1]$ 1 step to insert 2 to []  
$[2, 3] [1]$ 1 step for insert 3 to [2]  
$[1, 2, 3]$ 1 + 2 steps for insert 1 to [2, 3] 


$[3,2,1]$ (3 inversions)  
$[3] [2,1]$ 1 step to insert 3 to []  
$[2, 3] [1]$ 1 + 1 steps for insert 2 to [3]  
$[1, 2, 3]$ 1 + 2 steps for insert 1 to [2, 3] 

#### The relationshipt between the running time and the number of insertions.
At the $k$-th iteration, if $A[1..k]$ has $m$ inversions with $A[k]$ the last $m$ elements of $A[1..k-1]$ are the inversions because $A[1..k-1]$ are sorted. Thus the insertion needs $m$-th iterations.
Thus the running time is $\theta (n+d)$, where $d$ is the total number of inversions.
