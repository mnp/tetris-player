-*- Lisp-Interaction -*-

;; (aref tetris-shapes 0)
;;
;;  X X
;;  X X

;; (aref tetris-shapes 1)
;;
;;     X   X X
;; X X X     X  ...etc
;;           X

;; (aref tetris-shapes 2)
;;
;; X
;; X X X

;; (aref tetris-shapes 3)
;;
;;    X X
;;  X X

;; (aref tetris-shapes 4)
;;
;;  X X
;;    X X

;; (aref tetris-shapes 5)
;;
;;  X X X
;;    X

;; (aref tetris-shapes 6)
;;
;; X X X X


(defun best-place (shape height-vector)
  (cond ((is-flat height-vector) (left-side . (max-width-rotation shape)))
	((one-small-gap height-vector) xxxx.
	 )))

(defun gaps (hvec)
  (loop for x from 0 to (1- (length hvec))


(defun try-all-positions ()
  "Score all rotations and all positions of the current shape. Returns a list of the results of
  each attempt, elements of which are: (SCORE POSITION ROTATION)."
  (let ((hit nil))

    (tetris-erase-shape)
      (while (not hit)
        (setq tetris-pos-y (1+ tetris-pos-y))
        (setq hit (tetris-test-shape)))
      (setq tetris-pos-y (1- tetris-pos-y))
      (tetris-draw-shape)
      (tetris-shape-done))))

; (height-vector)
; [17 14 14 13 13 13 13 16 17 18]


  (dotimes (i 4) (princ (tetris-get-shape-cell i)))
[0 0][1 0][0 1][1 1]nil


(defun height-vector ()
  "Max heights of each X column. Ignores overhangs."
  (apply 'vector
	 (with-current-buffer "*Tetris*"
	   (cl-loop for x from 0 to (- tetris-width 1)
		    collect (cl-loop for y from 1 to tetris-height
				     if (not (= (gamegrid-get-cell (+ tetris-top-left-x x)
								   (+ tetris-top-left-y y))
						tetris-blank))
				     return y)))))

;; (with-current-buffer "*Tetris*"
;;   tetris-shape)
;; 5

;; TODO lookahead
;;... tetris-next-shape...

;; (with-current-buffer "*Tetris*"
;;   tetris-rot)
;; 0




;; Experiment, reading out the board
;;
;; (with-current-buffer "*Tetris*"
;;   (cl-loop for y from -1 to tetris-height do
;; 	   (princ
;;             (cl-loop for x from -1 to tetris-width
;;                      collect (if (= (gamegrid-get-cell (+ tetris-top-left-x x)
;; 						       (+ tetris-top-left-y y))
;; 				    tetris-blank)
;; 				 "   "
;; 			       " X ")))
;; 	   (terpri)))
;;
;; ( X   X   X   X   X   X   X   X   X   X   X   X )
;; ( X                                           X )
;; ( X                   X                       X )
;; ( X               X   X   X                   X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X                                           X )
;; ( X               X   X   X   X               X )
;; ( X               X   X   X   X               X )
;; ( X                   X                       X )
;; ( X               X   X   X       X           X )
;; ( X               X   X   X   X   X   X   X   X )
;; ( X   X   X   X   X   X   X   X   X   X   X   X )


;; ; count shapes
;; (cl-loop for shape from 0 to (1- (length tetris-shapes))
;; 	 collect (length (aref tetris-shapes shape)))
;; (1 4 4 2 2 4 2)

(defun all-rotations (shape)
  (aref tetris-shapes shape))
(all-rotations 2)
[[[0 0] [1 0] [2 0] [0 1]] [[0 -1] [1 -1] [1 0] [1 1]] [[2 -1] [0 0] [1 0] [2 0]] [[1 -1] [1 0] [1 1] [2 1]]]



(cons (terpri) (princ (aref tetris-shapes shape))))

[[[0 0] [1 0] [0 1] [1 1]]]
[[[0 0] [1 0] [2 0] [2 1]] [[1 -1] [1 0] [1 1] [0 1]] [[0 -1] [0 0] [1 0] [2 0]] [[1 -1] [2 -1] [1 0] [1 1]]]
[[[0 0] [1 0] [2 0] [0 1]] [[0 -1] [1 -1] [1 0] [1 1]] [[2 -1] [0 0] [1 0] [2 0]] [[1 -1] [1 0] [1 1] [2 1]]]
[[[0 0] [1 0] [1 1] [2 1]] [[1 0] [0 1] [1 1] [0 2]]]
[[[1 0] [2 0] [0 1] [1 1]] [[0 0] [0 1] [1 1] [1 2]]]
[[[1 0] [0 1] [1 1] [2 1]] [[1 0] [1 1] [2 1] [1 2]] [[0 1] [1 1] [2 1] [1 2]] [[1 0] [0 1] [1 1] [1 2]]]
[[[0 0] [1 0] [2 0] [3 0]] [[1 -1] [1 0] [1 1] [1 2]]]((t . [[[0 0] [1 0] [0 1] [1 1]]]) (t . [[[0 0] [1 0] [2 0] [2 1]] [[1 -1] [1 0] [1 1] [0 1]] [[0 -1] [0 0] [1 0] [2 0]] [[1 -1] [2 -1] [1 0] [1 1]]]) (t . [[[0 0] [1 0] [2 0] [0 1]] [[0 -1] [1 -1] [1 0] [1 1]] [[2 -1] [0 0] [1 0] [2 0]] [[1 -1] [1 0] [1 1] [2 1]]]) (t . [[[0 0] [1 0] [1 1] [2 1]] [[1 0] [0 1] [1 1] [0 2]]]) (t . [[[1 0] [2 0] [0 1] [1 1]] [[0 0] [0 1] [1 1] [1 2]]]) (t . [[[1 0] [0 1] [1 1] [2 1]] [[1 0] [1 1] [2 1] [1 2]] [[0 1] [1 1] [2 1] [1 2]] [[1 0] [0 1] [1 1] [1 2]]]) (t . [[[0 0] [1 0] [2 0] [3 0]] [[1 -1] [1 0] [1 1] [1 2]]]))



(length '[ a b c])
3
