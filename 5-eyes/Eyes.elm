module Eyes where

import EyesView (..)
import EyesModel (..)
import Mouse
import Signal
import Window

main = Signal.map2 eyes Window.dimensions Mouse.position

eyes (w,h) (x,y) = eyesView (w,h) (pupilsCoordinates (w,h) (x,y))
