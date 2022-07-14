module Model exposing (init, update)

import Test as T
import View as V
import Init as I

init = I.init
update event model = 
    case event of 
        V.Clickedc -> 
            {init | c = model.b, n = model.i, o = model.j, p = model.l }
        V.Clickedd -> 
            {init | d = model.b, h = model.i, k = model.j, m = model.l}
        V.Clickedg ->
            {init | g = model.b, q = model.i, r = model.j, s = model.l}
        V.Clickedf ->
            {init | f = model.b, t = model.i, u = model.j, v = model.l}
        V.Clickede ->
            {init | e = model.b, w = model.i, x = model.j, y = model.l}
