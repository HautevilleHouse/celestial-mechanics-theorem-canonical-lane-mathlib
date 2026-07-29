import celestialMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def celestialProjection : Projection CelestialEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem celestial_projection_idempotent (x : CelestialEndgameState) :
    celestialProjection.toFun (celestialProjection.toFun x) = celestialProjection.toFun x := by
  exact celestialProjection.idempotent x

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse