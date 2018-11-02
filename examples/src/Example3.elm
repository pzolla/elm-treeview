module Example3 exposing (main)

import Browser
import Data exposing (model, styles)
import Treeview as T


config : T.Config
config =
    let
        d =
            T.default styles
    in
    { d | checkbox = { enable = True, multiple = True, cascade = True } }


main : Program Never T.Model T.Msg
main =
    Browser.sandbox
        { model = model
        , view = T.view config
        , update = T.update
        }
