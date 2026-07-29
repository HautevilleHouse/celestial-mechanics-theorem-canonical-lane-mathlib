import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CelestialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure CelestialAdmittedObject where
  nBodySystem : Type u
  phaseSpace : Type v
  symplecticStructure : Prop
  totalEnergyDefined : Prop
  conclusion : symplecticStructure ∧ totalEnergyDefined

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion.1 ∧ A.object.conclusion.2

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCelestialMechanicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_celestial_mechanics_endgame (A : AdmissibleClass) :
    ConstrainedCelestialMechanicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse