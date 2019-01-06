import Data.GPS as G
import Crypto.Hash

data Location = G.Location
data JobOfferHash = Digest SHA256
data JobHash = Digest SHA256
data UserHash = Digest SHA256
data EmployerPublicKey = Digest SHA256
data EmployeePublicKey = Digest SHA256
data NumberOfPositions = Int

-- These lines that look like type signatures, are just pseudo-code.
-- They try to express some basic functions which could be part of the system.
-- These aren't intended to be viewed as actual types where the real world effects of the function are encoded.

createJobOffer :: EmployerPublicKey -> [Location] -> PaymentAmount -> JobOfferHash

applyForJob :: EmployeePublicKey -> JobOfferHash -> Signature -> ApplicationHash

acceptJobApplication :: EmployerPublicKey -> ApplicationHash -> JobHash

checkIn :: JobHash -> Location -> CheckInHash

checkOut :: JobHash -> Location -> CheckOutHash



-- Questions

-- What does it mean to type check a transaction?
-- What does it mean to type check a block?
-- What possible benefits could doing it have?
