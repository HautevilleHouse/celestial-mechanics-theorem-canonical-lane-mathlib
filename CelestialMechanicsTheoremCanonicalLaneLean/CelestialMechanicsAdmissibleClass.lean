import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CelestialMechanicsAdmittedObject where
  system : Type u
  topology : TopologicalSpace system
  nBodySystem : Prop
  boundedOrbits : Prop
  conclusion : boundedOrbits

structure AdmissibleClass where
  object : CelestialMechanicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CelestialMechanicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
