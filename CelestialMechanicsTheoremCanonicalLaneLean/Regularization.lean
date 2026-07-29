import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure Regularization where
  collisionTime : ℝ
  transformedCoordinates : ℝ × ℝ → ℝ × ℝ
  regularizingFunction : ℝ → ℝ
  singularityRemoved : Prop

def RegularizationClosed (R : Regularization) : Prop :=
  R.singularityRemoved ∧ R.transformedCoordinates (0,0) = (0,0)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse