import celestialMechanicsTheoremCanonicalLaneLean.Perturbation

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure StabilityPackage (K : PrimitiveKAMTorus) where
  kamCondition : Prop
  invariantTorus : Prop
  quasiperiodicMotion : Prop
  measureOfStability : Prop

structure StabilityEvidence {K : PrimitiveKAMTorus} (S : StabilityPackage K) where
  kamConditionClosed : S.kamCondition
  invariantTorusClosed : S.invariantTorus
  quasiperiodicMotionClosed : S.quasiperiodicMotion
  measureOfStabilityClosed : S.measureOfStability

def StabilityClosed {K : PrimitiveKAMTorus} (S : StabilityPackage K) : Prop :=
  S.kamCondition ∧ S.invariantTorus ∧ S.quasiperiodicMotion ∧ S.measureOfStability

theorem stability_closed_from_evidence
    {K : PrimitiveKAMTorus} (S : StabilityPackage K)
    (E : StabilityEvidence S) : StabilityClosed S := by
  exact And.intro E.kamConditionClosed
    (And.intro E.invariantTorusClosed
      (And.intro E.quasiperiodicMotionClosed E.measureOfStabilityClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse