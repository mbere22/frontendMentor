module View exposing (view)

import Element as E

x = E.explain Debug.todo
pw = \a -> w (E.px a)
ph = \a -> w (E.px a)
h = E.height
w = E.width  
fh = h E.fill
fw = w E.fill
fph = \a->h (E.fillPortion a)
fpw = \a -> w (E.fillPortion a)
tresx = 48

view = E.layout [x] body

body = E.column [fw, fh] [uno, dos, tres, adro]

uno = E.row [fw, fph 2] [unoa, unob]
dos = E.column [fw, fph 4] [dosa, dosb]
tres = E.row [fw, fph 2] [tresa, tresb, tresc, tresd, trese]
adro = E.row [fw, fph 2] [adroa]

unoa = E.el [x, fpw 1] (E.text "Uno") 
unob = E.el [x, fpw 9] (E.text "Uno")

dosa= E.el [x, fph 3, fw] (E.text "dos a")
dosb = E.el [x, fph 7, fw] (E.text "dos b")

tresa = E.el [x, fw] (E.text "tresa")
tresb = E.el [x, fw] (E.text "tresb")
tresc = E.el [x, fw] (E.text "tresc")
tresd = E.el [x, fw] (E.text "tresd")
trese = E.el [x, fw] (E.text "trese")


adroa = E.el [x, fw] (E.text "adro") 