% Create a solution for Exercise 5.8(c)
% fib01.pl
:- dynamic fib/2.  % cho phép assert động

fib(0, 1).
fib(1, 1).
fib(N, R) :-
    N > 1,
    (   fib_cached(N, R) -> true         % nếu đã có, dùng lại
    ;   N1 is N - 1, fib(N1, R1),
        N2 is N - 2, fib(N2, R2),
        R is R1 + R2,
        asserta(fib_cached(N, R))        % lưu lại kết quả
    ).

:- dynamic fib_cached/2.
