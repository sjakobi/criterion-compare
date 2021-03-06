{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Types where

import Data.Csv

-- | The name of a set of benchmark results from a single run.
newtype RunName = RunName {getRunName :: String}
                deriving (Eq, Ord, Show, FromField)

-- | The name of a benchmark
newtype BenchName = BenchName {getBenchName :: String}
                  deriving (Eq, Ord, Show, FromField)

data Stats = Stats { statsMean, statsMeanLB, statsMeanUB :: Double
                   , statsStd, statsStdLB, statsStdUB :: Double
                   }
           deriving (Show)
