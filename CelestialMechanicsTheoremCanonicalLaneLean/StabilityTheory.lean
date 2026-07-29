import CelestialMechanicsCanonicalLaneLean.HamiltonianMech

/-!
# Stability Theory Package
-/

namespace HautevilleHouse
namespace CelestialMechanicsCanonicalLaneLean

structure StabilityTheoryPackage where
  lyapunovExponents : Prop
  kolmogorovArnoldMoserTheory : Prop
  nBodyStabilityCriterion : Prop
  chaoticRegimeBoundary : Prop

structure StabilityTheoryEvidence (S : StabilityTheoryPackage) where
  lyapunovExponentsClosed : S.lyapunovExponents
  kolmogorovArnoldMoserTheoryClosed : S.kolmogorovArnoldMoserTheory
  nBodyStabilityCriterionClosed : S.nBodyStabilityCriterion
  chaoticRegimeBoundaryClosed : S.chaoticRegimeBoundary

def StabilityTheoryClosed (S : StabilityTheoryPackage) : Prop :=
  S.lyapunovExponents ∧ S.kolmogorovArnoldMoserTheory ∧
  S.nBodyStabilityCriterion ∧ S.chaoticRegimeBoundary

theorem stability_theory_closed_from_evidence (S : StabilityTheoryPackage)
    (E : StabilityTheoryEvidence S) : StabilityTheoryClosed S := by
  exact And.intro E.lyapunovExponentsClosed
    (And.intro E.kolmogorovArnoldMoserTheoryClosed
      (And.intro E.nBodyStabilityCriterionClosed E.chaoticRegimeBoundaryClosed))

end CelestialMechanicsCanonicalLaneLean
end HautevilleHouse