module Main exposing (main, Event)

import Browser as B
import View as V
import Model as M
import Test as T
import Element as E
import Element.Background as Eb
import Element.Input as Ei

type Event = Clickedc | Clickedd

main = B.sandbox {init = init, update = update, view = view}

init = M.init 

update a b = 
    case a of 
        Clickedc -> 
            {init | c = b.b}
        Clickedd -> 
            {init | d = b.b}

view = T.view {-E.layout []
  <| E.column [E.width E.fill, E.centerY] [
    Ei.button []{onPress= Just Clickedc, label = model.a},
    E.el[]<| model.c,
    Ei.button []{onPress= Just Clickedd, label = model.a},
    E.el[]<| model.d]-}