padrede('gloria','juan').
padrede('gloria','nicolas').
padrede('gloria','isabella').
padrede('maria','gloria').
padrede('jose','gloria').
padrede('maria','alba').
padrede('jose','alba').
padrede('maria','blanca').
padrede('jose','blanca').
padrede('emilia','maria').
hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
bisabuelode(A,B) :-  padrede(A,C), abuelode(C,B).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
tiode(A,B) :- padrede(C,B), hermanode(A,C).
casado(A,B) :- padrede(A,C), padrede(B,C).
feliz(A) :- casado(A,B).

familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
