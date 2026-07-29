import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure NBodyProblem where
  n : ℕ
  masses : Vector ℝ n
  positions : Vector (ℝ × ℝ × ℝ) n
  velocities : Vector (ℝ × ℝ × ℝ) n
  forceFunction : Vector (ℝ × ℝ × ℝ) n → Vector (ℝ × ℝ × ℝ) n

def NBodyProblemClosed (N : NBodyProblem) : Prop :=
  N.n > 1 ∧ ∀ i, N.masses[i] > 0

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse