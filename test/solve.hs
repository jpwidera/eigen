{-# LANGUAGE DataKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}

import Eigen.Matrix

solution :: IO ()
solution = do
  let a = empty :: Matrix Float
  print a
  return  ()


main :: IO ()
main = solution
