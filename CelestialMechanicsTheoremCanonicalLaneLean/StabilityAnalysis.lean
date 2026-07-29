import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure StabilityAnalysis where
  system : NBodyProblem
  lyapunovExponents : List ℝ
  kolmogorovArnoldMoser : Prop
  stabilityRegion : ℝ → ℝ → Prop

def StabilityClosed (S : StabilityAnalysis) : Prop :=
  S.kolmogorovArnoldMoser ∧ (∀ λ ∈ S.lyapunovExponents, λ ≤ 0)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse