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

### d. Conclusion
