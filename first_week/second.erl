-module (second).
-export ([hypotenuse/2, perimeter/2, area/2]).
%-import (first, [square/1]). Import is bad practice.

hypotenuse(SIDE_A,SIDE_B) ->
    math:sqrt(first:square(SIDE_A) + first:square(SIDE_B)).

perimeter(SIDE_A,SIDE_B) ->
    SIDE_A + SIDE_B + hypotenuse(SIDE_A,SIDE_B).

area (SIDE_A, SIDE_B) ->
    first:area(SIDE_A,SIDE_B,hypotenuse(SIDE_A,SIDE_B)).
