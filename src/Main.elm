module Main exposing (main)

import Browser as B
import View as V
import Element as E
import Element.Background as Eb
import Element.Input as Ei

type Event = Clickedc | Clickedd

main = B.sandbox {init = init, update = update, view = view}

init = {a = E.text "Hello", b = E.text "woooooooooooooorld", c = E.none, d = E.none}

update a b = 
    case a of 
        Clickedc -> 
            {init | c = b.b}
        Clickedd -> 
            {init | d = b.b}

view model = E.layout []
  <| E.column [E.width E.fill, E.centerY] [
    Ei.button []{onPress= Just Clickedc, label = model.a},
    E.el[]<| model.c,
    Ei.button []{onPress= Just Clickedd, label = model.a},
    E.el[]<| model.d
    ]