% Create a solution for Exercise 5.8(a)
fib(0, 1).
fib(1, 1).
fib(N, R) :-
    N > 1,
    N1 is N - 1, fib(N1, R1),
    N2 is N - 2, fib(N2, R2),
    R is R1 + R2.
