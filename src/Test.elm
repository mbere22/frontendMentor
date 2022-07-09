module Test exposing (view, Event(..))

import Element as E
import Element.Input as Ei

type Event = Clickedc | Clickedd

view model = E.layout []
  <| E.column [E.width E.fill, E.centerY] [
    Ei.button []{onPress= Just Clickedc, label = model.a},
    E.el[]<| model.c,
    Ei.button []{onPress= Just Clickedd, label = model.a},
    E.el[]<| model.d]