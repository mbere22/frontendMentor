module View exposing (view)

import Html as H
import Element as E
import Element.Background as EB
import Element.Font as EF
import Svg as S
import Svg.Attributes as SA

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
cb = E.rgb255 149 158 172
cc = E.rgb255 124 135 152
cd = E.rgb255 37 45 55
ce = E.rgb255 18 20 23
cf = E.rgb255 251 116 19
cg = E.rgb255 255 255 255
--ch = E.rgb255
rgb = \a -> EB.color a

--Font 



view = E.layout [x] body

body = E.column [fw, fh] [uno, dos, tres, adro]

uno = E.row [fw, fph 2] [unoa, unob]
dos = E.column [fw, fph 4] [dosa, dosb]
tres = E.row [fw, fph 2] [tresa, tresb, tresc, tresd, trese]
adro = E.row [fw, fph 2] [adroa]

unoa = E.el [x, fh, fpw 1, rgb cc] E.none --E.html<| S.svg [SA.width "19", SA.height "16"] [S.path [SA.fill "#FC7614", SA.d "m9.067.43 1.99 4.031c.112.228.33.386.58.422l4.45.647a.772.772 0 0 1 .427 1.316l-3.22 3.138a.773.773 0 0 0-.222.683l.76 4.431a.772.772 0 0 1-1.12.813l-3.98-2.092a.773.773 0 0 0-.718 0l-3.98 2.092a.772.772 0 0 1-1.119-.813l.76-4.431a.77.77 0 0 0-.222-.683L.233 6.846A.772.772 0 0 1 .661 5.53l4.449-.647a.772.772 0 0 0 .58-.422L7.68.43a.774.774 0 0 1 1.387 0Z"][]] 
unob = E.el [x, fh, fpw 9, rgb cd] E.none

dosa= E.el [x, fw, fph 3, rgb cd, EF.color cg
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]] (E.text "How did we do?")
dosb = E.paragraph [x, fw, fph 7, rgb cd, EF.color cb
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]]
     [E.text "Please let us know how we did with your"
        , E.html <| H.br [] []
        , E.text "support request. Sll feddback is appreciated"
        , E.html <| H.br [] []
        , E.text "to help us improve offering!"
     ]

tresa = E.el [x, fw, fh, rgb cc, EF.color cb
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif] ] (E.text "1")
tresb = E.el [x, fw, fh, rgb cc, EF.color cb
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]](E.text "2")
tresc = E.el [x, fw, fh, rgb cc, EF.color cb
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]](E.text "3")
tresd = E.el [x, fw, fh, rgb cc, EF.color cb
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]](E.text "4")
trese = E.el [x, fw, fh, rgb cc, EF.color cb
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]](E.text "5")


adroa = E.el [x, fw, fh, rgb ca, EF.color cg
    , EF.size 18
    , EF.family[EF.external { name = "Overpass", url = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"}
    , EF.sansSerif]] (E.text "Submit") 