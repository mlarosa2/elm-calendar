module Day exposing(init)

import Html exposing (div)
import Html.Attributes exposing (class)

--INIT 

init: Integer -> List String
init day events = 
    Model day events

-- MODEL

type alias Model = { day: Integer 
                    , events: List String
}


-- UPDATE

type Msg = Add | Remove

update : Msg -> Model -> Model
update msg model =
  case msg of
    Add event ->
      append model.events event 
    
    Remove event ->
      filter (\currentEvent -> event /= currentEvent) model.events



-- VIEW

view : Model -> Html Msg
view model =
  div [class "day-container"] 
      [ div [class "day-display-container"]
            [text model.day
            ]
        , div [class "day-events-container"]
              [text generateEvents model.events
              ]
      ]


-- HELPERS

generateEvents: List String -> String
generateEvents events = 
    join "\n" events