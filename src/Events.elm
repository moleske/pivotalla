module Events exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL


type alias Model = {
    name : String
  , date : String
}


model : Model
model =
  Model "oh noes" "what have i done"



-- UPDATE


type Msg
  = Dummy


update : Msg -> Model -> Model
update msg model =
  case msg of
    Dummy ->
      model


-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ div [] [ text (toString model) ]
    ]
