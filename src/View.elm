module View exposing (view)

import Element as E
import Element.Background as Eb
import Element.Border as Ebr
import Element.Font as Ef
import Icon as I
import Html as H
import Html.Attributes as Ha
import Element.Input as Ei

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
vk = "https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@400;700&display=swap"
vl = {angle = pi, steps = [vd, ve]} --view background gradient color
vm = fb 255 255 255
vn = E.centerX
vo = E.centerY
vp = E.html <| I.a
vq = E.clip 
vr = E.fill
vs = E.html <| I.b
vt = E.html <| I.c 
vu = "How many team members can I invite?"
vv = "What is the maximum file upload size?"
vw = "How do I reset my password?"
vx = "Can I cancel my subscription?"
vy = "Do you provide additional support?"
vz = "FAQ"
vaa = E.html <| H.hr [] []

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
fi = \a -> E.moveLeft a
fj = \a -> E.moveUp a
fk = \a -> E.above a
fl = \a -> E.text a
fm = \a -> E.spacing a 

view = E.layout [fc vl] body
body = E.column [fa vm, vn, vo, fe <| fg 450, ff <| fg 950, fh 24] [uno]
uno = E.row [ff vr, fe vr] [unoa, unob] 
unoa = E.column [ff vr, fe vr, E.inFront unoab, E.inFront unoac][unoaa] 
unob = E.column [ff vr, fe vr][unoba, unobb]
unoba = E.column [ff vr, fe vr, fe <| fd 1][E.el [Ef.size 30, Ef.bold, vo, Ef.family [ Ef.external { name = "Kumbh Sans", url = vk }, Ef.sansSerif]] <| fl vz] 
unobb = E.column [ff vr, fe vr, fm 20, fe <| fd 3] [Ei.button [Ef.size 12, Ef.family [ Ef.external { name = "Kumbh Sans", url = vk }, Ef.sansSerif]]{onPress= Nothing, label=E.text vu}, vaa, Ei.button [Ef.size 12, Ef.family [ Ef.external { name = "Kumbh Sans", url = vk }, Ef.sansSerif]]{onPress= Nothing, label=E.text vv}, vaa, fl vw, vaa, fl vx, vaa, fl vy, vaa]
unoaa = E.el [ff vr, fe vr] vp
unoab = E.el [ff vr, fe vr] vs
unoac = E.el [ff vr, fe vr] vt 

{-body = E.column [fe vr, ff vr] [uno, dos, tres]
dos = E.row [fe vr, ff vr, fe <|fd 4] [dosa, dosb, dosc]
dosb = E.row [fa vm, vn, vo, ff <| fd 3, fe vr] [E.text "hello"]
uno = E.el [ff vr, fe <|fd 1] E.none
tres = E.el [ff vr, fe <|fd 1] E.none
dosa = E.el [ff <|fd 1] E.none 
dosc = E.el [ff <|fd 1] E.none-} 