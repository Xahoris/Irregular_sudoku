# Irregular_sudoku
Final project sudoku Baptiste FASSLER

The sudoku is a japanese game that was created a long time ago in japan. It's a logic based puzzle where the goal is to fill up a 9x9 grid with number following several rules : 
- Each row must have differents numbers
- Each column must also contain different numbers 
- Each 3x3 square blocks must also countains differents numbers

So, depending of the informations you have in the beginning, the sudokus can be very easy to solve or also very hard.

It exists also irregular sudokus where the 3x3 square blocks are replaced by radoms blocks of size 9 cases.
In this project, we will use Prolog to developp a programm able to solve one configuration  of these types of sudoku for initial values given 

The code will be given in annex and explained here.
- I first of all need to include a new module with the commands i need to solve the sudoku
- The next commands are crating a 9x9 matrix and setting each spot with numbers from 1 to 9 
- We then need to check if all the values are dinstinct using the command (all_distinct) to the main matrix and the transposed one 
- finally this matrix : Matrix = [L1,L2,L3,L4,L5,L6,L7,L8,L9] is a 9 lines matrix with differents numbers
- Now we need to define each spot of the rows with a name and also define the irregularities
- To define the irregularities I am just saying that 9 spots has to be differents following a pattern that i found on the internet.
- The last step is to give the initial values in order to solver the sudoku following a 9x9 grid pattern.
- Then if everyting works correctly, I am able to get the solution using this command : 
sudoku1(S), sudoku(S), maplist(label,S), maplist(portray_clause,S).

this is the result : 
[1, 3, 4, 5, 6, 8, 7, 9, 2].
[8, 7, 5, 2, 1, 4, 9, 6, 3].
[7, 9, 2, 6, 3, 1, 5, 8, 4].
[6, 2, 9, 4, 8, 3, 1, 5, 7].
[5, 4, 8, 3, 7, 9, 2, 1, 6].
[4, 1, 6, 9, 2, 5, 3, 7, 8].
[2, 5, 1, 8, 4, 7, 6, 3, 9].
[3, 6, 7, 1, 9, 2, 8, 4, 5].
[9, 8, 3, 7, 5, 6, 4, 2, 1].

And if we look at it from closer we can see that it matches perfectly with the irregularities.


Finally, we can change the irregularities in the code if we want to follow a different pattern and also chnage the initials values to get a different solution .



