module Model exposing (init, update)

import Test as T
import Init as I

init = I.init
update event model = 
    case event of 
        T.Clickedc -> 
            {init | c = model.b}
        T.Clickedd -> 
            {init | d = model.b}

