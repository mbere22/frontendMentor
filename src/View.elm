module View exposing (view)

import Element as E

x = E.explain Debug.todo
h = E.height
w = E.width  
fh = h E.fill
fw = w E.fill
fph = \a->h (E.fillPortion a)
fpw = \a -> w (E.fillPortion a)

view = E.layout [x] body

body = E.column [fw, fh] [uno, dos, tres, adro]
uno = E.el [fph 1] (E.text "Uno") 
dos = E.column [fpw 1, fph 7] [dosa, dosb]
dosa= E.el [x, fph 5] (E.text "dos a")
dosb = E.el [x, fph 5] (E.text "dos b")
tres = E.row [x, fph 1] [tresa, tresb,tresc, tresd, trese]
tresa = E.el [fpw 5] (E.text "tresa")
tresb = E.el [fpw 5] (E.text "tresb")
tresc = E.el [fpw 5] (E.text "tresc")
tresd = E.el [fpw 5] (E.text "tresd")
trese = E.el [fpw 5] (E.text "trese")
adro = E.el [fph 1] (E.text "adro a") 