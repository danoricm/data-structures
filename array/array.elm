-- array.elm
module Main exposing (main)

import Browser
import Html exposing (Html, div, text)

main =
    Browser.sandbox { init = init, update = update, view = view }

type alias Model =
    { arr : List Int }

init : Model
init =
    { arr = [1, 2, 3, 4, 5] }

type Msg = NoOp

update : Msg -> Model -> Model
update msg model =
    model

view : Model -> Html Msg
view model =
    div []
        [ text ("Array elements are: " ++ (String.join " " (List.map String.fromInt model.arr))) ]
