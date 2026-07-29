import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure StabilityCriteria where
  lyapunovExponent : ℝ
  kolmogorovArnoldMoserCondition : Prop
  resonanceCondition : Prop
  collisionAvoided : Prop
  longTermBounded : Prop
  longTermBoundedTerm : longTermBounded

def StabilityEvidence (S : StabilityCriteria) where
  longTermBoundedClosed : S.longTermBounded
  resonanceConditionClosed : S.resonanceCondition

def StabilityClosed (S : StabilityCriteria) : Prop :=
  S.longTermBounded ∧ S.resonanceCondition

theorem stability_closed_from_evidence (S : StabilityCriteria)
    (E : StabilityEvidence S) : StabilityClosed S :=
  And.intro E.longTermBoundedClosed E.resonanceConditionClosed

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse