# Exercises## 3.1-1 > prove that $max(f(n),g(n)) = \Theta(f(n)+g(n))$

$ \cfrac{1}{2} (f(n) + g(n)) \leq max(f(n), g(n)) \leq 2 (f(n) + g(n)) $  

## 3.1-2
> Show that for any real constants a and b, where b > 0,  > $ (n+a)^b = \Theta(n^b)$

$ \cfrac{1}{2} n^b <
(n+a)^b =
{}_b C_0 \cdot n^b +
{}_b C_1 \cdot a \cdot n^{b-1}
{}_b C_2 \cdot a^2 \cdot n^{b-2} +
... +
{}_b C_0 \cdot a^b
< 2 n^b$

## 3.1-3
> Explain why the statement, “The running time of algorithm A is at least $O(n^2)$,” is meaningless.

The $O(n^2)$ indicates that the running time of algorithm has an asymptotic upper bound $n^2$. it means that the running time of algorithm A is at most $n^2$. and that doesn't make sentence `at least`

## 3.1-4
> Is $2^{n+1} = O(2^n)$?

$2^{n+1} \leq 2 \cdot 2^n = O(2^n)$ => true

>  Is $2^{2n} = O(2^n)$?

$2^{2n} = 2^n \cdot 2^n \geq 2^n \neq O(2^n)$ => false


## 3.1-5
> Prove the Theorem 3.1.  
> For any two functions $f(n)$ and $g(n)$, we have $f(n) = \Theta(g(n))$ if and only if $f(n) = O(g(n))$ and $f(n) = \Omega(g(n))$

If $f(n) = \Theta(g(n))$, we have that:  
$ 0 \leq c_1 g(n) \leq f(n) \leq c_2 g(n)$ for $n > n_0$  

$0 \leq  c_1 g(n) \leq f(n)$ for $n > n_0$, which means that:  
$f(n) = \Omega(g(n))$

$0 \leq  f(n) \leq c_2 g(n)$ for $n > n_0$, which means that:  
$f(n) = O(g(n))$


On the other hand,  
if $f(n) = O(g(n))$ and $f(n) = \Omega(g(n))$ we have that:  

$0 \leq c_3 g(n) \leq f(n)$ for all $n \geq n_1$   
$0 \leq f(n) \leq c_4 g(n)$ for all $n \geq n_2$   

$0 \leq c_3 g(n) \leq f(n) \leq c_4 g(n)$ for all $n \geq max(n_1, n_2)$  
which is the definition of $\Theta$

## 3.1-6
> Prove that the running time of an algorithm is $\Theta(g(n))$ if and only if its worst-case running time is $O(g(n))$ and its best case running time is $\Omega(g(n))$



## 3.1-7
> Prove that $o(g(n)) \cap \omega(g(n))$ is the empty set.

If $f(n) = o(g(n))$, we have that for any positive constant $c > 0$  
$ 0 \leq f(n) < c g(n)$ for all $n > n_1$

If $f(n) = \omega(g(n))$, we have that for any constant $c > 0$  
$ 0 \leq c g(n) < f(n) $ for all $n > n_2$

means that it's impossible to have $g(n)$ which satisfies both definitions.