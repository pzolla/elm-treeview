module Example1 exposing (main)

import Browser
import Data exposing (model, styles)
import Treeview as T


config : T.Config
config =
    T.default styles

main : Program () T.Model T.Msg
main =
    Browser.sandbox
        { init = model
        , view = T.view config
        , update = T.update
        }
