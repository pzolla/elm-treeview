module Example2 exposing (main)

import Browser
import Data exposing (model, styles)
import Treeview as T


config : T.Config
config =
    let
        d =
            T.default styles
    in
    { d | search = { enable = True } }

main : Program () T.Model T.Msg
main =
    Browser.sandbox
        { init = model
        , view = T.view config
        , update = T.update
        }
