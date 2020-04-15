# Knight moves (Knight's Travails)

## Goal
Find the shortest way for a knight from one square, to another. From the starting square, assume that all the moves made are children of a node. 

## Pre-project thoughts
I have been looking forward to this. I really enjoy chess, but have never done anything more than play. I think that breadth search makes the most sense, because depth first could potentially cause the search to be infinte, altough it is unlikely. Theoretically in depth first it could just jump between the first. Later I will implement a full scale chess. The game board, and the knight piece needs to be implemented in a way, that it is also usable later. 

## Thought's about implementation
Using breadth first, I will have to just go through all the possible ways until I find a way. The first one, or several ones, I find on the same depth is the answer. Later I can make it more effective. If I ever encounter a cycle, meaning I come back to a square where I have been before, I can quit that route. 

### Road map
  1. Make a knight class. Should contain:
      Init contains x and y position of knight. 
      A list of the L shape that it moves. (an array with x and y values, e.g. [-2, -1]).
      A method, which returns an array of all currently possible moves. 
      
  2. Make a gameboard. 
      Init 8x8 array with positions.
      At start all pieces are initiated in a hash.  (For full chess) Maybe only knight now. Key (name) is a symbol e.g. :black_knight, and value is a one char string (for example K for knight).
      Either a position can be empty or have a piece. 
      Display method that shows pieces and empty squares. 
      Knight position can be saved by adding the knight x and y to the position. 
      
  3. Make a move node class, maybe.
    Can be used for binary search. Maybe also include a distance so the search can be used in the future for other things, where the distance is of interest. Probably better to skip distance. 
    All that is needed is current square and an array of children. 
    Implement a parent class variable. If a child is equal to parent, then stop that route. That means it has traveled in a cycle. E.g [F5][D6][F5]. The number of steps between a child and parent or grandparent node must be an even number for it to ever be a cycle.
  4. Make a knight's travail class. This is used for the assignment goal. Node helper class might not be necessary. 
