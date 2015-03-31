#lang racket
(require graphics/turtles
         graphics/turtle-examples)

;Initializes the turtles window.
(turtles #t)

;Defines a new procedure to draw a turtle image.
(define (draw-turtles x z)
  (cond ((and (real? x) (> z 0))
         ;Begins a sequence of events.
         (begin (split* (turn/radians (/ pi 6)) (turn/radians (/ pi 2)))
                (draw x)
                (draw-turtles (+ x 15) (- z 1))))
        ;Checks for valid params.
        ((not (real? z))
         (error "unknown expression type -- z" z))
        ((not (real? x))
         (error "unknown expression type -- x" x))
        ;Save the image.
        (else (save-turtle-bitmap "new-turtle" 'png))))

;Call draw-turtles with specified parameters.
(draw-turtles 0 9)
;Clears the turtles window.
(clear)

;Defines a new procedure to draw a regular-poly turtles image.
(define (draw-poly-turtles x y z)
  (cond ((and (real? x) (real? y) (> z 0))
         ;Begins a sequence of events.
         (begin (regular-poly x y)
                (draw-poly-turtles (+ x 1) (+ y 5) (- z 1))))
        ;Checks for valid params.
        ((not (real? z))
         (error "unknown expression type -- z" z))
        ((not (real? y))
         (error "unknown expression type -- y" y))
        ((not (real? x))
         (error "unknown expression type -- x" x))
        ;Else, save the image.
        (else (save-turtle-bitmap "new-poly-turtle" 'png))))

;Calls draw-poly-turtles with given params.
(draw-poly-turtles 2 0 80)

;(regular-poly 8 30)
;(regular-poly 10 45)
;(spyro-gyra)
;(neato)
;(graphics-bexam)
;(sierp-nosplit 100)
;(turn/radians (- (/ pi 2)))
;(fern1 100)
