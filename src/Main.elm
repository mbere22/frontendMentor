module Main exposing (main)

import Browser as B
import View as V

main = B.sandbox {init = init, update = update, view = view}

init = V.view
update a b = init 
view a = init 