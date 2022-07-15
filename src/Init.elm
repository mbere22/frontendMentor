module Init exposing (init)

import Element as E
import Element.Font as Ef

init = {a = E.text vv, b = vaq, c = vam, d = vam, e = vam, f=vam, g=vam, h=mac, i=maa, j =mab, k = mad, l = mae, m = maf, n= mag, o=mah, p=mai, q=mac,r=mad,s=maf, t=mac, u=mad,v=maf,w=mac,x=mad,y=maf }

--VALUES
vv = "What is the maximum file upload size?"
vam = E.none 
vaq = E.text "No more than 2GB. All files in your account must fit your allotted storage space."
maa = E.rotate(pi)
mab = E.moveLeft(turns(4))
mac = E.rotate(2*pi)
mad = E.moveLeft(turns(0))
mae = Ef.extraBold
maf = Ef.regular
mag = mac
mah = mad
mai = maf
maj = mac
mak = mad
mal = maf 
mam = mac
man = mad
mao = maf
map = mac
maq = mad
mar = maf 

