import Graphics.Element exposing (..)
import Graphics.Input.Field as Field
import List exposing (sum)
import Result exposing (toMaybe)
import Maybe exposing (andThen)
import String 
import Text

type Update = Year Field.Content | Month Field.Content | Day Field.Content
type alias Date = (Field.Content, Field.Content, Field.Content)
type alias BigNaughty = { y : Int, m : Int, d : Int }

updates : Signal.Mailbox Update
updates = Signal.mailbox (Year Field.noContent)

getValues : Update -> Date -> Date
getValues update (oldYear, oldMonth, oldDay) = 
  case update of 
    Year content -> (content, oldMonth, oldDay)
    Month content -> (oldYear, content, oldDay)
    Day content -> (oldYear, oldMonth, content)

parseValue : Field.Content -> Maybe Int
parseValue c = String.toInt c.string |> toMaybe

getBigNaughty : Date -> Maybe BigNaughty
getBigNaughty (y,m,d) = 
    parseValue y `andThen` (\year ->
    parseValue m `andThen` (\month ->
    parseValue d `andThen` (\day ->
    if (year < 100) && (month < 100) && (day < 100) then
      Just { y = year, m = month, d = day }
    else
      Nothing
    )))

safadeza : BigNaughty -> (Float, Float)
safadeza {y, m, d} = 
  let safado = (toFloat <| sum [0..m]) + ((toFloat y) / 100) * (50 - (toFloat d))
      anjo   = 100 - safado
  in  (anjo, safado)

getSafadeza : Date -> Element
getSafadeza d =
  case (getBigNaughty d) of
    Just safadao -> 
      let (anjo, safado) = safadeza safadao
      in centered ( (Text.fromString "Você é ") 
                    `Text.append` (Text.fromString <| String.slice 0 4 <| toString anjo) 
                    `Text.append` (Text.fromString "% anjo e ") 
                    `Text.append` (Text.fromString <| String.slice 0 4 <| toString safado)
                    `Text.append` (Text.fromString "% safado.") )
                    
    Nothing ->
      centered (Text.fromString "Insira uma data válida")

fields : Date -> Element
fields = \(y,m,d) ->
  width 200 <| flow down [ Field.field Field.defaultStyle (Signal.message updates.address << Year) "Year" y,
                           Field.field Field.defaultStyle (Signal.message updates.address << Month) "Month" m,
                           Field.field Field.defaultStyle (Signal.message updates.address << Day) "Day" d,
                           getSafadeza (y,m,d) ]
                           
values : Signal Date
values = Signal.foldp getValues (Field.noContent, Field.noContent, Field.noContent) <| updates.signal

main : Signal Element
main =
  Signal.map fields values