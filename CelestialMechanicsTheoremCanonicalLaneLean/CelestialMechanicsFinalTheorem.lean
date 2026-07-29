import CelestialMechanicsTheoremCanonicalLaneLean.CelestialMechanicsBridgeLemmas
import CelestialMechanicsTheoremCanonicalLaneLean.CelestialMechanicsGateLemmas

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

def ConstrainedCelestialMechanicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_celestial_mechanics_endgame (A : AdmissibleClass) :
    ConstrainedCelestialMechanicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
