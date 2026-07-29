import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CelestialInitialConditionsPackage where
  initialPositions : Type u
  initialVelocities : Type v
  masses : Type w
  nondegeneracyCondition : Prop
  smoothInitialData : Prop
  nondegeneracyConditionTerm : nondegeneracyCondition
  smoothInitialDataTerm : smoothInitialData

structure CelestialInitialConditionsEvidence (P : CelestialInitialConditionsPackage) where
  nondegeneracyConditionClosed : P.nondegeneracyCondition
  smoothInitialDataClosed : P.smoothInitialData

def CelestialInitialConditionsClosed (P : CelestialInitialConditionsPackage) : Prop :=
  P.nondegeneracyCondition ∧ P.smoothInitialData

theorem celestial_initial_conditions_closed_from_evidence
    (P : CelestialInitialConditionsPackage)
    (E : CelestialInitialConditionsEvidence P) :
    CelestialInitialConditionsClosed P := by
  exact And.intro E.nondegeneracyConditionClosed E.smoothInitialDataClosed

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
