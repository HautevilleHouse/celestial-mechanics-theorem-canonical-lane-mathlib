import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CentralForceModel where
  primaryBody : Type u
  primaryMass : ℝ
  secondaryBody : Type u
  secondaryMass : ℝ
  gravitationalParameter : ℝ
  mutualDistance : ℝ → ℝ
  potentialFunction : ℝ → ℝ
  hamiltonianDefined : Prop
  hamiltonianDefinedTerm : hamiltonianDefined

structure CentralForceEvidence (C : CentralForceModel) where
  hamiltonianDefinedClosed : C.hamiltonianDefined
  potentialRegularity : Prop
  potentialRegularityClosed : potentialRegularity

def CentralForceClosed (C : CentralForceModel) : Prop :=
  C.hamiltonianDefined

theorem central_force_closed_from_evidence (C : CentralForceModel)
    (E : CentralForceEvidence C) : CentralForceClosed C :=
  E.hamiltonianDefinedClosed

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse