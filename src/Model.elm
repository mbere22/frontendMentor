module Model exposing (init)

import Element as E

init = {a = vv, b = vaq, c = vam, d = vam}

vam = E.none 
vaq = E.text "No more than 2GB. All files in your account must fit your allotted storage space."
vv = E.text "What is the maximum file upload size?"
