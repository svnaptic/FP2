# Final Project Assignment 2: Explore One More! (FP2)
DUE March 30, 2015 Monday (2015-03-30)

### My Library: graphics/turtles
For this assignment, I decided to play around with turtle graphics. There exist two forms of turtle graphics: traditional turtle operations (which follows imperative programming) and functional turtle operations. This emphasizes Racket's multiparadigm design; in this case, I only worked with traditional turtle graphics, which requires the library 'graphics/turtles'. The functional turtle operations require 'graphics/value-turtles'.

In order to initialize the turtles window, I called the following:

```
(turtles #t)
```

I then defined two new procedures, draw-turtles and draw-poly-turtles. In draw-turtles, I took two parameters: x is the number of pixels and draws a line on the path, while z is the total number of times the turtle will loop through the procedure. If both x and z are valid parameters, the following will run until z reaches 0:

```
(begin (split* (turn/radians (/ pi 6)) (turn/radians (/ pi 2)))
                (draw x)
                (draw-turtles (+ x 15) (- z 1))))
```

Once z reaches 0, my program will save the image from the 'Turtles' window as 'new-turtle.png'.

```
(save-turtle-bitmap "new-turtle" 'png)
```

Then, I clear the window to prep for the next procedure call. draw-poly-turtles follows a similar style. It takes in 3 parameters. x is the number of sides, y is the radius, and z is the number of times draw-poly-turtles is called. x and y are passed to the function, regular-poly, which draw a polygon of x sides and y radial length. Assuming that all the parameters are valid, this block of code will occur:

```
(begin (regular-poly x y)
                (draw-poly-turtles (+ x 1) (+ y 5) (- z 1))))
```

Once z reaches 0, my program will save the image from the 'Turtles' window as 'new-poly-turtle.png'. The new-poly-turtle-screenshot.png and new-turtle-screenshot.png show where the 'turtles' are left behind. Turtles are essentially cursors on a Cartesian plane. The reddish-pink markings on these screenshots indicate this.