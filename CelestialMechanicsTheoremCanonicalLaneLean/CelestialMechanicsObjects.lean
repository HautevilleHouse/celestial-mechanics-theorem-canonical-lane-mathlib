import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CelestialBody where
  mass : ℚ
  position : ℚ × ℚ × ℚ
  velocity : ℚ × ℚ × ℚ

structure NBodySystem where
  bodies : List CelestialBody
  n : ℕ
  n_eq_length : n = bodies.length

structure CelestialMechanicsAdmittedObject where
  system : NBodySystem
  nBodyProblem : Prop
  initialConditionsAdmissible : Prop
  solutionExists : Prop
  conclusion : solutionExists

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse