module View exposing (view)

import Element as E
import Element.Background as Eb

--VALUES
va = E.rgb255 4 34 5 --color va

--FUNCTIONS
fa = \a -> Eb.color a  --set color to background


view = E.layout [fa va] body

body = E.none 