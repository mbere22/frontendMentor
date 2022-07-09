module Main exposing (main)

import Browser as B
import View as V
import Model as M
import Test as T
import Element as E
import Element.Background as Eb
import Element.Input as Ei


main = B.sandbox {init = init, update = update, view = view}

init = M.init 

update a b = 
    case a of 
        T.Clickedc -> 
            {init | c = b.b}
        T.Clickedd -> 
            {init | d = b.b}

view = T.view 