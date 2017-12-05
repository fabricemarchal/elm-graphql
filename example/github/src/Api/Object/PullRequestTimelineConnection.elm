module Api.Object.PullRequestTimelineConnection exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.PullRequestTimelineConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.PullRequestTimelineItemEdge -> FieldDecoder (List edges) Api.Object.PullRequestTimelineConnection
edges object =
    Object.listOf "edges" [] object


nodes : FieldDecoder (List String) Api.Object.PullRequestTimelineConnection
nodes =
    Field.fieldDecoder "nodes" [] (Decode.string |> Decode.list)


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.PullRequestTimelineConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.PullRequestTimelineConnection
totalCount =
    Field.fieldDecoder "totalCount" [] Decode.int