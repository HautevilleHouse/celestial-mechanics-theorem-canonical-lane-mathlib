import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CentralForceSystem where
  mass : ℝ
  potentialEnergy : ℝ → ℝ
  angularMomentum : ℝ
  effectivePotential : ℝ → ℝ
  orbitType : String

def CentralForceSystemClosed (C : CentralForceSystem) : Prop :=
  C.mass > 0 ∧ C.angularMomentum ≠ 0 ∧ C.effectivePotential = λ r => C.angularMomentum^2/(2*C.mass*r^2) + C.potentialEnergy r

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse