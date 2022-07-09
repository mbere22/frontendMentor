module View exposing (view, Event(..))

import Element as E
import Element.Background as Eb
import Element.Border as Ebr
import Element.Font as Ef
import Element.Events as Ee
import Element.Input as Ei

import Icon as I

import Html as H
import Html.Attributes as Ha

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
vaa = Ebr.widthEach {bottom = 1, left = 0, right = 0, top = 0}
vab = Ef.family [ Ef.external { name = "Kumbh Sans", url = vk }, Ef.sansSerif]
vac = Ef.bold
vad = E.html <| I.d
vae = E.row [ff vr][Ei.button [ff vr, fn 12, ff <| fd 4, vaa, vak, val]{onPress= Nothing, label=E.row [ff vr][E.textColumn [ff <| fd 10, vab, fn 15, vao 8] [E.paragraph [][E.text vu], E.paragraph[fn 12][vam]], E.el [ff <|fd 1, vap] vad]}, E.el [ff vr, ff <| fd 1] E.none]
vaf model = E.row [ff vr][Ei.button [ff vr, fn 12, ff <| fd 4, vaa, vak, val]{onPress= Just Clickedc, label=E.row [ff vr][E.textColumn [ff <| fd 10, vab, fn 15, vao 8] [E.paragraph [][E.text vv], E.paragraph[fn 12][model.c]], E.el [ff <|fd 1, vap] vad]}, E.el [ff vr, ff <| fd 1] E.none]
vag = E.row [ff vr][Ei.button [ff vr, fn 12, ff <| fd 4, vaa, vak, val]{onPress= Nothing, label=E.row [ff vr][E.textColumn [ff <| fd 10, vab, fn 15, vao 8] [E.paragraph [][E.text vw], E.paragraph[fn 12][vam]], E.el [ff <|fd 1, vap] vad]}, E.el [ff vr, ff <| fd 1] E.none]
vah = E.row [ff vr][Ei.button [ff vr, fn 12, ff <| fd 4, vaa, vak, val]{onPress= Nothing, label=E.row [ff vr][E.textColumn [ff <| fd 10, vab, fn 15, vao 8] [E.paragraph [][E.text vx], E.paragraph[fn 12][vam]], E.el [ff <|fd 1, vap] vad]}, E.el [ff vr, ff <| fd 1] E.none]
vai = E.row [ff vr][Ei.button [ff vr, fn 12, ff <| fd 4, vaa, vak, val]{onPress= Nothing, label=E.row [ff vr][E.textColumn [ff <| fd 10, vab, fn 15, vao 8] [E.paragraph [][E.text vy], E.paragraph[fn 12][vam]], E.el [ff <|fd 1, vap] vad]}, E.el [ff vr, ff <| fd 1] E.none]
vak = Ebr.color va
val = E.paddingEach {top=1, right = 1, bottom = 15, left = 1}
vam = E.none 
vao = E.spacing
vap = E.alignTop
vaq = E.text "No more than 2GB. All files in your account must fit your allotted storage space."

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
fn = \a -> Ef.size a

--TYPES

type Event = Clickedc | Clickedd

view model = E.layout [fc vl] <| body model
body model= E.column [fa vm, vn, vo, fe <| fg 450, ff <| fg 950, fh 24] [uno model]
uno model = E.row [ff vr, fe vr] [unoa, unob model] 
unoa = E.column [ff vr, fe vr, E.inFront unoab, E.inFront unoac][unoaa] 
unob model = E.column [ff vr, fe vr][unoba, unobb model]
unoba = E.column [ff vr, fe vr, fe <| fd 1] [E.el [fn 30, vo, vab, vac] <| fl vz] 
unobb model = E.column [ff vr, fe vr, fm 20, fe <| fd 3] [vae, vaf model, vag, vah, vai]
unoaa = E.el [ff vr, fe vr] vp
unoab = E.el [ff vr, fe vr] vs
unoac = E.el [ff vr, fe vr] vt 
