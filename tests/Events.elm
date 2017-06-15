module Events exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)


suite : Test
suite =
    describe "Events"
       [ describe "Msg Increment"
            [ fuzz int "Always adds one" <|
                \random ->
                    Events.update(Increment)(random) |> Expect.atLeast 0
            ]
    ]
