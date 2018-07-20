-- | Chain policies represent validation properties plus generators to construct
--   both validating and non-validating chains.
module Chain.Policy where

import Chain.Abstract
import Validation.Parameters
import qualified UTxO.DSL as DSL

data Policy = Policy
  { polValidation :: Chain DSL.IdentityAsHash -> Validation }
