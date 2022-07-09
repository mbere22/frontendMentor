module Main exposing (main)

import Browser as B
import Model as M
import Test as T
import View as V


main = B.sandbox {init = init, update = update, view = view}

init = M.init 
update = M.update
view = V.view 