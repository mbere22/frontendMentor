module Main exposing (main)

import Browser as B
import View as V

main = B.sandbox {init = model, update = update, view = view}

model = V.view
update a b = model
view a = model 