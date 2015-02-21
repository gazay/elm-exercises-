module HelloWorld3 where

import Color (blue)
import Graphics.Element (..)
import Text as T

makeBlue : T.Text -> T.Text
makeBlue = T.color blue

main : Element
main =
  T.fromString "Hello world"
    |> makeBlue
    |> T.italic
    -- same as in 2
    |> T.leftAligned
