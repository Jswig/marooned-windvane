module Post exposing (main, metadataHtml)

import Elmstatic exposing (..)
import Html exposing (Html)
import Html.Attributes as Attributes
import Page


tagsToHtml : List String -> List (Html Never)
tagsToHtml tags =
    let
        tagLink tag =
            "/tags/" ++ String.toLower tag

        linkify tag =
            Html.a [ Attributes.href <| tagLink tag, Attributes.class "post_metadata__tags__tag" ]
                [ Html.text tag ]
    in
    List.map linkify tags


metadataHtml : Elmstatic.Post -> Html Never
metadataHtml post =
    Html.div [ Attributes.class "post_metadata" ]
        [ Html.span [] [ Html.text post.date ]
        , Html.span [] [ Html.text "•" ]
        , Html.span [ Attributes.class "post_metadata__tags" ] (tagsToHtml post.tags)
        ]


main : Elmstatic.Layout
main =
    Elmstatic.layout Elmstatic.decodePost <|
        \content ->
            Ok <|
                Page.layout [ metadataHtml content, Page.markdown content.content ]
