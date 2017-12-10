module Api.Query exposing (..)

import Api.Enum.SortOrder
import Api.Enum.Weather
import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Graphqelm.Query as Query exposing (Query)
import Graphqelm.Value as Value exposing (Value)
import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode


captains : Query (List String)
captains =
    Query.fieldDecoder "captains" [] (Decode.string |> Decode.list)


me : Query String
me =
    Query.fieldDecoder "me" [] Decode.string


menuItems : ({ contains : Maybe String, order : Maybe Api.Enum.SortOrder.SortOrder } -> { contains : Maybe String, order : Maybe Api.Enum.SortOrder.SortOrder }) -> Object menuItems Api.Object.MenuItem -> Query (List menuItems)
menuItems fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { contains = Nothing, order = Nothing }

        optionalArgs =
            [ Argument.optional "contains" filledInOptionals.contains Value.string, Argument.optional "order" filledInOptionals.order (Value.enum toString) ]
                |> List.filterMap identity
    in
    Query.listOf "menuItems" optionalArgs object


weather : Query Api.Enum.Weather.Weather
weather =
    Query.fieldDecoder "weather" [] Api.Enum.Weather.decoder
