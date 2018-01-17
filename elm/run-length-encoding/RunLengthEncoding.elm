module RunLengthEncoding exposing (..)
import Maybe

encode: String -> String
encode data =
  data
    |> String.toList
    |> List.foldr splitRuns []
    |> List.map encodeRun
    |> String.join ""

encodeRun: String -> String
encodeRun run =
    run
      |> String.left 1
      |> String.append (runLength run)

runLength: String -> String
runLength run =
  run
    |> String.length
    |> toString

splitRuns: (Char -> List String -> List String)
splitRuns char runs =
  let nextChar = String.fromChar char in
    if String.startsWith nextChar (previousRun runs) then
      String.cons char (previousRun runs) :: (restOfRuns runs)
    else
      nextChar :: runs

previousRun: List String -> String
previousRun runs =
  runs
    |> List.head
    |> Maybe.withDefault ""

restOfRuns: List String -> List String
restOfRuns runs =
  runs
    |> List.tail
    |> Maybe.withDefault []


decode: String -> String
decode data =
  data


version : Int
version =
  2
