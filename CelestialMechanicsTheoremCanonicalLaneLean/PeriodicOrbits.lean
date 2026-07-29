import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure PeriodicOrbitFamily where
  period : ℝ
  orbitType : String
  initialConditions : Vector ℝ 6
  existsPeriodic : Prop
  stabilityIndex : ℕ
  existsPeriodicTerm : existsPeriodic

def PeriodicOrbitEvidence (P : PeriodicOrbitFamily) where
  existsPeriodicClosed : P.existsPeriodic
  stabilityIndexPositive : P.stabilityIndex ≥ 1

def PeriodicOrbitClosed (P : PeriodicOrbitFamily) : Prop :=
  P.existsPeriodic ∧ (P.stabilityIndex ≥ 1)

theorem periodic_orbit_closed_from_evidence (P : PeriodicOrbitFamily)
    (E : PeriodicOrbitEvidence P) : PeriodicOrbitClosed P :=
  And.intro E.existsPeriodicClosed E.stabilityIndexPositive

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse