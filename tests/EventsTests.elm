module EventsTests exposing (..)

import Events exposing (..)
import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, list, int, string)
import Test exposing (..)


suite : Test
suite =
    describe "Events"
        [
        -- fuzz runs the test 100 times with randomly-generated inputs!
        fuzz string "Dummy does nothing" <|
            \randomlyGeneratedInt ->
              let
                  model = Model randomlyGeneratedInt randomlyGeneratedInt
              in
                  Expect.equal model (update(Dummy)(model))
        ]
