module Main exposing (main)

import Browser as B
import Model as M
import Test as T


main = B.sandbox {init = init, update = update, view = view}

init = M.init 
update = M.update
view = T.view 