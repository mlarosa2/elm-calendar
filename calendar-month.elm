import Html exposing (..)
import Day exposing (init)
import Date.Extra.Core exposing (daysInMonth)

-- INIT
init = 
    
-- MODEL

type alias Model = {  }


-- UPDATE

type Msg = Reset | ...

update : Msg -> Model -> Model
update msg model =
  case msg of
    Reset -> ...
    ...


-- VIEW

view : Model -> Html Msg
view model =
  ...