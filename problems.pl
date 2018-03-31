%% ---
%hint: use append, reverse, bagof judiciously.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 1: Rules

zip(L1,L2,L3) :- append(L1,L2, Concat), permutation(Concat, L3).

%assoc(L,X,Y) :- throw(to_be_done).
assoc( [[H1,H2] | _T] , X,Y) :- X=H1, Y=H2.


union(L1,L2,L3) :- throw(to_be_done). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 2: Facts

cost(carne_asada,3).
cost(lengua,2).
cost(birria,2).
cost(carnitas,2).
cost(adobado,2).
cost(al_pastor,2).
cost(guacamole,1).
cost(rice,1).
cost(beans,1).
cost(salsa,1).
cost(cheese,1).
cost(sour_cream,1).
cost(taco,1).
cost(tortilla,1).


ingredients(carnitas_taco, [taco,carnitas, salsa, guacamole]).
ingredients(birria_taco, [taco,birria, salsa, guacamole]).
ingredients(al_pastor_taco, [taco,al_pastor, salsa, guacamole, cheese]).
ingredients(guacamole_taco, [taco,guacamole, salsa,sour_cream]).
ingredients(al_pastor_burrito, [tortilla,al_pastor, salsa]).
ingredients(carne_asada_burrito, [tortilla,carne_asada, guacamole, rice, beans]).
ingredients(adobado_burrito, [tortilla,adobado, guacamole, rice, beans]).
ingredients(carnitas_sopa, [sopa,carnitas, guacamole, salsa,sour_cream]).
ingredients(lengua_sopa, [sopa,lengua,beans,sour_cream]).
ingredients(combo_plate, [al_pastor, carne_asada,rice, tortilla, beans, salsa, guacamole, cheese]).
ingredients(adobado_plate, [adobado, guacamole, rice, tortilla, beans, cheese]).

taqueria(el_cuervo, [ana,juan,maria], 
        [carnitas_taco, combo_plate, al_pastor_taco, carne_asada_burrito]).

taqueria(la_posta, 
        [victor,maria,carla], [birria_taco, adobado_burrito, carnitas_sopa, combo_plate, adobado_plate]).

taqueria(robertos, [hector,carlos,miguel],
        [adobado_plate, guacamole_taco, al_pastor_burrito, carnitas_taco, carne_asada_burrito]).

taqueria(la_milpas_quatros, [jiminez, martin, antonio, miguel],  
        [lengua_sopa, adobado_plate, combo_plate]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 2: Rules

available_at(X,Y) :- throw(to_be_done).

total_cost(X,K) :- throw(to_be_done). 

has_ingredients(X,Is) :- throw(to_be_done).

disgruntled(X) :- throw(to_be_done). 

avoids_ingredients(X,Is) :- throw(to_be_done). 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 3: DFA (you add this one)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Problem 4: Extra credit (optional for undergrad section)
