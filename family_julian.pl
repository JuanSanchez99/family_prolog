padrede('briselda', 'santos').
padrede('santos', 'ivan').
padrede('trina', 'ivan').
padrede('santos', 'hugo').
padrede('trina','hugo').
padrede('natalia', 'clara').
padrede('rafael', 'clara').
padrede('natalia', 'gloria').
padrede('rafael', 'gloria').

% mine
padrede('ivan', 'julian').
padrede('clara', 'julian').
padrede('ivan', 'arturo').
padrede('clara', 'arturo').

% uncle's
padrede('hugo', 'camila').
padrede('Janeth', 'camila').
padrede('hugo', 'nicolas').
padrede('Janeth', 'nicolas').

% auntie's
padrede('gloria', 'gina').
padrede('german', 'gina').
padrede('gloria','william').
padrede('german', 'william').

hijode(A, B):-padrede(B, A).
abuelode(A, B):-padrede(A, C),padrede(C, B).
hermanode(A, B):-padrede(C, A), padrede(C, B), A\==B.
familiarde(A, B):-hijode(A,B).
familiarde(A, B):-abuelode(A, B).
familiarde(A, B):-hermanode(A,B).

bisabuelode(A, B):- padrede(A, C), abuelode(C, B).
casado(A, B):-padrede(A, C), padrede(B, C).
feliz(A):-casado(A,B).

primode(A, B):- padrede(C,A), padrede(D,B), hermanode(C, D).
tiode(A, B):- padrede(C, B), hermanode(A, C).
nieto(A, B):-abuelode(B, A).
sobrino(A, B):-tiode(B, A).



