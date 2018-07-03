-*- Lisp-Interaction -*-

(elt tetris-shapes 0)
[[[0 0] [1 0] [0 1] [1 1]]]

(elt tetris-shapes 4)
[[[1 0] [2 0] [0 1] [1 1]] 
 [[0 0] [0 1] [1 1] [1 2]]]


(elt tetris-shapes 5)
[[[1 0] [0 1] [1 1] [2 1]] 
 [[1 0] [1 1] [2 1] [1 2]]
 [[0 1] [1 1] [2 1] [1 2]]
 [[1 0] [0 1] [1 1] [1 2]]]


(for 
tetris-buffer-height
22
tetris-buffer-width
30

(gamegrid-get-cell  
 tetris-top-left-x
 (+ tetris-top-left-y 3))

tetris-shapes

(with-current-buffer "*Tetris*"
  (cl-loop for y from -1 to tetris-height do
	   (princ
            (cl-loop for x from -1 to tetris-width 
                     collect (if (= (gamegrid-get-cell (+ tetris-top-left-x x)
						       (+ tetris-top-left-y y))
				    tetris-blank)
				 "   "
			       " X ")))
	   (terpri)))

( X   X   X   X   X   X   X   X   X   X   X   X )
( X                                           X )
( X                   X                       X )
( X               X   X   X                   X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X                                           X )
( X               X   X   X   X               X )
( X               X   X   X   X               X )
( X                   X                       X )
( X               X   X   X       X           X )
( X               X   X   X   X   X   X   X   X )
( X   X   X   X   X   X   X   X   X   X   X   X )
nil

