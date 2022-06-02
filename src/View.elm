module View exposing (view)

import Element as E
import Element.Background as Eb
import Element.Border as Ebr
import Svg as S 
import Svg.Attributes as Sa 
import Icon as I

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
fg = \a -> E.px a --Length size in pixels
fh = \a -> Ebr.rounded a

view = E.layout [fc vl] body
body = E.column [fa vm, vn, vo, fe <| fg 450, ff <| fg 950, fh 24] [uno]
uno = E.row [ff vr, fe vr] [unoa, unob] 
unoa = E.column [ff vr, fe vr][E.html <| I.a ] --[E.image [x,fe <| fg 275, vo] {src="./wdsk.svg", description="image of a woman online"}]
unob = E.column [ff vr, fe vr][E.none]

{-body = E.column [fe vr, ff vr] [uno, dos, tres]
dos = E.row [fe vr, ff vr, fe <|fd 4] [dosa, dosb, dosc]
dosb = E.row [fa vm, vn, vo, ff <| fd 3, fe vr] [E.text "hello"]
uno = E.el [ff vr, fe <|fd 1] E.none
tres = E.el [ff vr, fe <|fd 1] E.none
dosa = E.el [ff <|fd 1] E.none 
dosc = E.el [ff <|fd 1] E.none-} 