module Main where

import Prelude ((+))
import Data.Tuple

add :: Int -> Int -> Int
add x y = x + y

type User =
  { name :: String
  , age :: Number
  }

data Direction
  = North
  | South
  | East
  | West

-- We could get rid of this "interface"
-- and implement directly by uncommenting the
-- pattern match below and commenting out the instance
class Reversible a where
  reverse :: a -> a

-- reverse :: Direction -> Direction
instance reversibleDirection :: Reversible Direction where
  reverse North = South
  reverse South = North
  reverse East = West
  reverse West = East

foreign import strReverse :: String -> String
instance reversibleString :: Reversible String where
  reverse str = strReverse str

mirror :: forall a. (Reversible a) => a -> Tuple a a
mirror a = Tuple a (reverse a)

isItOne :: Int -> Boolean
isItOne 1 = true
isItOne _ = false

main :: _
main = add
