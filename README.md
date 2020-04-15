# Knight moves (Knight's Travails)

## Goal
Find the shortest way for a knight from one square, to another. From the starting square, assume that all the moves made are children of a node. 

## Pre-project thoughts
I have been looking forward to this. I really enjoy chess, but have never done anything more than play. I think that breadth search makes the most sense, because depth first could potentially cause the search to be infinte, altough it is unlikely. Theoretically in depth first it could just jump between the first. Later I will implement a full scale chess. The game board, and the knight piece needs to be implemented in a way, that it is also usable later. 

## Thought's about implementation
Using breadth first, I will have to just go through all the possible ways until I find a way. The first one, or several ones, I find on the same depth is the answer. Later I can make it more effective. If I ever encounter a cycle, meaning I come back to a square where I have been before, I can quit that route. 

### Road map
  1. Make a knight class. Should contain:
      How it moves (an array with x and y values, e.g. [-2, -1]). 
      
