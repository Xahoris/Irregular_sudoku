:- use_module(library(clpfd)). %this library contains the commands we nned to solve the sudoku

sudoku(Matrix) :- length(Matrix, 9), 
				maplist(same_length(Matrix), Matrix), %Creating a matrix with 9 lines and 9 columns
				append(Matrix, Vars), Vars ins 1..9, %all the elements are between 1 and 9
				maplist(all_distinct, Matrix),%all the elements are distincts 
				transpose(Matrix, TransMatrix), %transposing the matrix 
				maplist(all_distinct, TransMatrix),
				Matrix = [L1,L2,L3,L4,L5,L6,L7,L8,L9], %This is a 9 lines matrix 
				L1=[E11,E12,E13,E14,E15,E16,E17,E18,E19], %define the 9 rows of the matrix
				L2=[E21,E22,E23,E24,E25,E26,E27,E28,E29],
				L3=[E31,E32,E33,E34,E35,E36,E37,E38,E39],
				L4=[E41,E42,E43,E44,E45,E46,E47,E48,E49],
				L5=[E51,E52,E53,E54,E55,E56,E57,E58,E59],
				L6=[E61,E62,E63,E64,E65,E66,E67,E68,E69],
				L7=[E71,E72,E73,E74,E75,E76,E77,E78,E79],
				L8=[E81,E82,E83,E84,E85,E86,E87,E88,E89],
				L9=[E91,E92,E93,E94,E95,E96,E97,E98,E99],
				
				all_distinct([E11,E12,E13,E21,E31,E32,E41,E42,E51]), %define the irregular blocks of the sudoku
				all_distinct([E14,E15,E16,E17,E18,E24,E25,E26,E35]),
				all_distinct([E19,E27,E28,E29,E36,E37,E38,E39,E49]),
				all_distinct([E22,E23,E33,E34,E43,E52,E53,E54,E62]),
				all_distinct([E44,E45,E46,E47,E55,E63,E64,E65,E66]),
				all_distinct([E48,E56,E57,E58,E67,E76,E77,E87,E88]),
				all_distinct([E61,E71,E72,E73,E74,E81,E82,E83,E91]),
				all_distinct([E75,E84,E85,E86,E92,E93,E94,E95,E96]),
				all_distinct([E59,E68,E69,E78,E79,E89,E97,E98,E99]).
				
%Filling the sudoku with numbers 

sudoku1([
		[_,_,_,_,6,_,7,9,_],
		[_,7,_,_,1,_,_,_,3],
		[_,_,2,_,_,_,_,_,4],
		[6,_,_,4,_,_,_,_,_],
		[5,_,_,_,_,_,_,1,6],
		[_,_,_,9,_,5,_,_,_],
		[2,_,_,_,_,_,6,_,_],
		[_,_,_,_,_,_,_,4,_],
		[_,_,3,_,5,6,_,_,_]
		]).
				
%command to get solution,  sudoku1(S), sudoku(S), maplist(label,S), maplist(portray_clause,S).