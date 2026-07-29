import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.ThreeBodyProblem

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure SymplecticIntegratorPackage (P : ThreeBodyProblemPackage) where
  stepSize : ℚ
  method : Type u
  symplecticCondition : Prop
  energyDriftBounded : Prop
  longTermStability : Prop

structure SymplecticIntegratorEvidence {P : ThreeBodyProblemPackage}
    (I : SymplecticIntegratorPackage P) where
  symplecticConditionClosed : I.symplecticCondition
  energyDriftBoundedClosed : I.energyDriftBounded
  longTermStabilityClosed : I.longTermStability

def SymplecticIntegratorClosed {P : ThreeBodyProblemPackage}
    (I : SymplecticIntegratorPackage P) : Prop :=
  I.symplecticCondition ∧ I.energyDriftBounded ∧ I.longTermStability

theorem symplectic_integrator_closed_from_evidence
    {P : ThreeBodyProblemPackage} (I : SymplecticIntegratorPackage P)
    (E : SymplecticIntegratorEvidence I) : SymplecticIntegratorClosed I := by
  exact And.intro E.symplecticConditionClosed
    (And.intro E.energyDriftBoundedClosed E.longTermStabilityClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse