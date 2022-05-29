module View exposing (view)

import Element as E

x = E.explain Debug.todo

view = E.layout [x] body

body = E.el [] (E.text "Re Bonjour Elm...")
