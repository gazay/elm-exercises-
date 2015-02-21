module HelloWorld where

import Color (blue)
import Graphics.Element (..)
import Text

main : Element
main =
  Text.fromString "Hello world"
    |> Text.color blue
    |> Text.italic
    |> Text.bold
    |> Text.height 60
    |> Text.leftAligned
