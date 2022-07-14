module Model exposing (init, update)

import Test as T
import View as V
import Init as I

init = I.init
update event model = 
    case event of 
        V.Clickedc -> 
            {init | c = model.b}
        V.Clickedd -> 
            {init | d = model.b}
        V.Clickedg ->
            {init | g = model.b}
        V.Clickedf ->
            {init | f = model.b}
        V.Clickede ->
            {init | e = model.b}
