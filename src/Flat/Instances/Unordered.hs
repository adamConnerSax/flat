module Flat.Instances.Unordered
  ()
where

import           Flat.Instances.Mono
import           Flat.Instances.Util
import           Data.HashSet
import           Data.Hashable
import qualified Data.HashMap.Strict           as MS

-- $setup
-- >>> import Flat.Instances.Base()
-- >>> import Flat.Instances.Test
-- >>> import Data.Word    
-- >>> import qualified Data.HashMap.Strict
-- >>> import qualified Data.HashMap.Lazy
-- >>> import qualified Data.HashSet
-- >>> let test = tstBits

{-|
>>> test (Data.HashSet.fromList [1..3::Word])
(True,28,"10000000 11000000 10100000 0110")
-}

instance (Hashable a, Eq a,Flat a) => Flat (HashSet a) where
  size   = sizeSet
  encode = encodeSet
  decode = decodeSet

{-|
>>> test (Data.HashMap.Strict.fromList [(1,11),(2,22)])
(True,35,"10000001 00001011 01000001 00001011 000")

>>> test (Data.HashMap.Lazy.fromList [(1,11),(2,22)])
(True,35,"10000001 00001011 01000001 00001011 000")

-}
instance (Hashable k,Eq k,Flat k,Flat v) => Flat (MS.HashMap k v) where
  size   = sizeMap
  encode = encodeMap
  decode = decodeMap

-- instance (Hashable k,Eq k,Flat k,Flat v) => Flat (ML.HashMap k v) where
--   size   = sizeMap
--   encode = encodeMap
--   decode = decodeMap

