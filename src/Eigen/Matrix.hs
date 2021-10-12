{-# LANGUAGE TypeFamilies, MultiParamTypeClasses #-}
module Eigen.Matrix
  ( 
  Matrix(..)
  ,empty
   ) where

import qualified Eigen.Raw as Raw
import qualified Eigen.Generic as Generic
import qualified Data.Vector.Unboxed as VU

data family Matrix a 
newtype instance Matrix Float = F_Matrix (Raw.Matrix Float)
  deriving Show
newtype instance Matrix Double = D_Matrix (Raw.Matrix Double)

instance Generic.Matrix Matrix Float where
  empty = F_Matrix (Raw.Matrix Raw.DynamicRows Raw.DynamicCols (VU.empty)) :: Matrix Float

instance Generic.Matrix Matrix Double where
  empty = D_Matrix (Raw.Matrix Raw.DynamicRows Raw.DynamicCols (VU.empty)) :: Matrix Double

empty = F_Matrix Raw.empty

