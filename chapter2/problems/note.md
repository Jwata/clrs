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