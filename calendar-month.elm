import Html exposing (..)
import Day exposing (init, view)
import Date.Extra.Core exposing (daysInMonth)
import Html.Attributes exposing (class)

-- INIT
init month year model =
    Model (days (range 0 (daysInMonth year month)))

-- MODEL

type alias Model = { days: List Day }
-- UPDATE

type Msg = Change

update : Msg -> Model -> Model
update msg model month year =
  case msg of
    Change -> 
       init month year model


-- VIEW

view : Model -> Html Msg
view model =
  div [class "calendar-container"]
      [join "" (map (\day -> Day.view day) model.days)
      ]

-- HELPERS
 