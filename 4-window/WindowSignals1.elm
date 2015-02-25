module WindowSignals1 where

import Graphics.Element (down, flow)
import List (map)
import Signal ((~), (<~))
import Text (plainText)
import Window

showSignals a b c =
  flow down
    <| map plainText [
      "Window dimensions: " ++ toString a,
      "Window width: " ++ toString b,
      "Window height: " ++ toString c
    ]

main =
  showSignals
    <~ Window.dimensions
    ~ Window.width
    ~ Window.height
