/* 1 : test if X is an element of a list L. */
is_element_of(X, [X|_]):-!.                             % If X is the first element(head) of the list,return true and stop.
is_element_of(X, [_| Y]) :- is_element_of(X, Y).        % else recur for the rest of the list.

/* 2 : return true if X is the 1st element of a list. */
first(E, [E | _]).  

/* 3 : find the last element of a list. */
last_element([]):-write('List is empty').
last_element([X]):-write("last element is : "),write(X).
last_element([_|Y]):-last_element(Y).

/* 4 : find the second to last element of a list. */
penultimate([]):-write('none'),!.
penultimate([_]):-write('none'),!.
penultimate([X,_]):-write('second to last element is : '), write(X),!.
penultimate([_|Y]):- penultimate(Y).

/* 5 : delete the Kth element of a list and return the deleted element and the updated list. */
del_k(_, [], _, []):- write("List is empty."),!.
del_k(A, [A|E], 1, E):-!.
del_k(X, [A|Y], K, [A|R]):-K > 1, K1 is K-1, del_k(X, Y, K1, R).

/* 6 : find the length of a list and put it in N. without using the predef predicat length/2 */
length_list([],0).
length_list([_|Y],N):-length_list(Y,N1), N is N1+1.

/* 7 : return True if total number of elements in a list is even.
(recursion ver) */
even([]).
even([_,_|Z]):-even(Z).

/* 7 : non recursion ver */
even2(L):-length(L,N), N mod 2 == 0.

/* 8 : concatinate two Lists in variable L. */
concat([],L2,L2):-!.
concat([A|B],L2,[A|Res]):-concat(B,L2,Res).

/* return true if a list is a plindrome. using the predef predicat reverse/2 */
palindrome(L) :- reverse(L, R), L = R.