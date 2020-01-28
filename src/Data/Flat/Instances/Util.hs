{-# LANGUAGE TupleSections ,ViewPatterns ,NoMonomorphismRestriction ,BangPatterns ,ScopedTypeVariables #-}

module Data.Flat.Instances.Util
    ( 
        module F
    --     sizeList
    -- , decodeList
    -- , encodeList
    , encodeArray
    
    )
where

import           Data.Flat.Class               as F
import           Data.Flat.Decoder             as F
import           Data.Flat.Encoder             as F
import           Data.Flat.Types               as F
-- import           Data.List
-- import GHC.Exts(IsList)

-- $setup
-- >>> import Data.Flat.Instances.Base()
-- >>> import Data.Flat.Instances.Test
-- >>> let test = tstBits

-- {-|
-- >>> test []
-- (True,1,"0")

-- >>> test [1::Word8]
-- (True,10,"10000000 10")
-- -}

-- {-# INLINE sizeList #-}
-- sizeList :: Flat a => [a] -> NumBits -> NumBits
-- sizeList l sz = foldl' (\s e -> size e (s + 1)) (sz + 1) l 

-- {-# INLINE encodeList #-}
-- encodeList :: Flat a => [a] -> Encoding
-- encodeList = encodeListWith encode

-- {-# INLINE decodeList #-}
-- decodeList :: Flat a => Get [a]
-- decodeList = decodeListWith decode

{-# INLINE encodeArray #-}
encodeArray :: Flat a => [a] -> Encoding
encodeArray = encodeArrayWith encode