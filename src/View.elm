module View exposing (view)

import Element as E
import Element.Background as Eb

--VALUES
va = fb 231 231 233
vb = fb 9 30 53 
vc = fb 244 124 87
vd = fb 175 103 233
ve = fb 101 101 231
vf = fb 74 75 94
vg = fb 120 120 135
vh = "12px"
vi = "375px"
vj = "1440px"
vk = "https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap"
vl = {angle = pi, steps = [vd, ve]} --view background gradient color
vm = fb 255 255 255
vn = E.centerX
vo = E.centerY
--vp = 
--vq = 
vr = E.fill

--FUNCTIONS
fa = \a -> Eb.color a  --set color to background
fb = \a -> E.rgb255 a  --set color
fc = \a -> Eb.gradient a --set gradient
x = E.explain Debug.todo
fd = \a -> E.fillPortion a
fe = \a -> E.height a
ff = \a -> E.width a
view = E.layout [fc vl] body
body = E.column [fe vr, ff vr] [uno, dos, tres]
dos = E.row [ff vr, fe <|fd 4] [dosa, dosb, dosc]
dosb = E.row [x, fa vm, vn, vo, ff <| fd 3] [E.text "hello"]
uno = E.el [fe <|fd 1] E.none
tres = E.el [fe <|fd 1] E.none
dosa = E.el [ff <|fd 1] E.none 
dosc = E.el [ff <|fd 1] E.none 