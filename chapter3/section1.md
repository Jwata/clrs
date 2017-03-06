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
