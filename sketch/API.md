type Node
type Property

node : String -> List Property -> List Node -> Node
text : String -> Node
property : String -> Json.Value -> Property
attribute : String -> String -> Property
attributeNS : String -> String -> String -> Property

data Options =
    { stopPropagation : Bool
    , preventDefault : Bool }

on : String -> Json.Decoder a -> (a -> Signal.Message) -> Property


node
text
property
attribute
on
onWithOptions
defaultOptions

