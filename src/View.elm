module View exposing (view)

import Html as H
import Element as E
import Element.Background as EB
import Element.Font as EF

--Debug
x = E.explain Debug.todo

--Size Height Width
h = E.height
w = E.width  
fh = h E.fill
fw = w E.fill
fph = \a->h (E.fillPortion a)
fpw = \a -> w (E.fillPortion a)

--Color
ca = E.rgb255 252 218 19 
--cb =
--cc =
--cd =
--ce =
--cd = 
--cf =
--ce =
rgb = \a -> EB.color a

--Font 



view = E.layout [x
    ,EF.color (E.rgb 0 0 1)
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]] body

body = E.column [fw, fh] [uno, dos, tres, adro]

uno = E.row [fw, fph 2] [unoa, unob]
dos = E.column [fw, fph 4] [dosa, dosb]
tres = E.row [fw, fph 2] [tresa, tresb, tresc, tresd, trese]
adro = E.row [fw, fph 2] [adroa]

unoa = E.el [x, fh, fpw 1, rgb ca] E.none 
unob = E.el [x, fh, fpw 9] E.none

dosa= E.el [x, fph 3, fw] E.none --(E.text "How did we do?")
dosb = E.paragraph [x, fph 7, fw] [E.none]
       -- [E.text "Please let us know how we did with your"
        --, E.html <| H.br [] []
        --, E.text "support request. Sll feddback is appreciated"
        --, E.html <| H.br [] []
        --, E.text "to help us improve offering!"
       -- ]

tresa = E.el [x, fw] E.none --(E.text "1")
tresb = E.el [x, fw] E.none --(E.text "2")
tresc = E.el [x, fw] E.none --(E.text "3")
tresd = E.el [x, fw] E.none --(E.text "4")
trese = E.el [x, fw] E.none --(E.text "5")


adroa = E.el [x, fw] E.none --(E.text "Submit") 