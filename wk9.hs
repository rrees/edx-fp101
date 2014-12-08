import Data.List
import Data.Char
import Unsafe.Coerce

data Nat
	= Zero
	| Succ Nat
	deriving Show

natToInteger :: Nat -> Integer

natToInteger Zero = 0
natToInteger (Succ n) = natToInteger n + 1