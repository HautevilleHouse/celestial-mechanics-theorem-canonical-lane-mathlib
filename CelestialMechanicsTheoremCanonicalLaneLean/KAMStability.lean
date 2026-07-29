import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.CelestialMechanicsCore

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure KAMStabilityPackage where
  invariantTorusExists : Prop
  nondegeneracyConditionHolds : Prop
  diophantineConditionSatisfied : Prop
  perturbationSmallEnough : Prop

structure KAMStabilityEvidence (P : KAMStabilityPackage) where
  invariantTorusExistsClosed : P.invariantTorusExists
  nondegeneracyConditionHoldsClosed : P.nondegeneracyConditionHolds
  diophantineConditionSatisfiedClosed : P.diophantineConditionSatisfied
  perturbationSmallEnoughClosed : P.perturbationSmallEnough

def KAMStabilityClosed (P : KAMStabilityPackage) : Prop :=
  P.invariantTorusExists ∧ P.nondegeneracyConditionHolds ∧
  P.diophantineConditionSatisfied ∧ P.perturbationSmallEnough

theorem kam_stability_closed_from_evidence
    (P : KAMStabilityPackage)
    (E : KAMStabilityEvidence P) : KAMStabilityClosed P := by
  exact And.intro E.invariantTorusExistsClosed
    (And.intro E.nondegeneracyConditionHoldsClosed
      (And.intro E.diophantineConditionSatisfiedClosed E.perturbationSmallEnoughClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse