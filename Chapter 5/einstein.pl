% einstein.pl
% Solution for Exercise 5.9 – Einstein's (Zebra) Puzzle

solve(FishOwner) :-
    Houses = [house(_, _, _, _, _),
              house(_, _, _, _, _),
              house(_, _, _, _, _),
              house(_, _, _, _, _),
              house(_, _, _, _, _)],

    % Facts from the puzzle
    member(house(red, briton, _, _, _), Houses),
    member(house(_, swede, _, _, dog), Houses),
    member(house(_, dane, tea, _, _), Houses),
    left_of(house(green, _, _, _, _), house(white, _, _, _, _), Houses),
    member(house(green, _, coffee, _, _), Houses),
    member(house(_, _, milk, _, _), Houses), nth1(3, Houses, house(_, _, milk, _, _)),
    nth1(1, Houses, house(_, norwegian, _, _, _)),
    next_to(house(_, norwegian, _, _, _), house(blue, _, _, _, _), Houses),
    member(house(_, _, _, pallmall, bird), Houses),
    member(house(yellow, _, _, dunhill, _), Houses),
    next_to(house(_, _, _, marlboro, _), house(_, _, _, _, cat), Houses),
    next_to(house(_, _, _, dunhill, _), house(_, _, _, _, horse), Houses),
    member(house(_, _, beer, winfield, _), Houses),
    member(house(_, german, _, rothmans, _), Houses),
    next_to(house(_, _, _, marlboro, _), house(_, _, water, _, _), Houses),

    member(house(_, FishOwner, _, _, fish), Houses).

% Helper relations
left_of(L, R, [L,R|_]).
left_of(L, R, [_|T]) :- left_of(L, R, T).

next_to(X, Y, Houses) :- left_of(X, Y, Houses).
next_to(X, Y, Houses) :- left_of(Y, X, Houses).
