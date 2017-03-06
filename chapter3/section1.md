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

