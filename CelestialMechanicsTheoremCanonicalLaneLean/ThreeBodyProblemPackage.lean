import canonicalLaneMathlib.AdmissibleClass
import CelestialMechanicsTheoremCanonicalLaneLean.KeplerOrbitPackage

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure ThreeBodyProblemPackage (K : KeplerOrbitPackage) where
  bodyCount : ℕ
  masses : Vector ℝ bodyCount
  positions : Vector (ℝ × ℝ × ℝ) bodyCount
  velocities : Vector (ℝ × ℝ × ℝ) bodyCount
  equationsOfMotion : Prop
  conservedQuantities : Prop

structure ThreeBodyProblemEvidence {K : KeplerOrbitPackage} (T : ThreeBodyProblemPackage K) where
  equationsOfMotionClosed : T.equationsOfMotion
  conservedQuantitiesClosed : T.conservedQuantities

def ThreeBodyProblemClosed {K : KeplerOrbitPackage} (T : ThreeBodyProblemPackage K) : Prop :=
  T.equationsOfMotion ∧ T.conservedQuantities

theorem three_body_problem_closed_from_evidence
    {K : KeplerOrbitPackage} (T : ThreeBodyProblemPackage K)
    (E : ThreeBodyProblemEvidence T) : ThreeBodyProblemClosed T := by
  exact And.intro E.equationsOfMotionClosed E.conservedQuantitiesClosed

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
