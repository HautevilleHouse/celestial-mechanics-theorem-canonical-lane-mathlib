import CelestialMechanicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CelestialMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : CelestialMechanicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CelestialMechanicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CelestialMechanicsCanonicalLaneLean
end HautevilleHouse