import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure GravitationalPotentialPackage where
  potentialFunction : Type u
  inverseSquareLaw : Prop
  singularityAtCollision : Prop
  analyticExceptCollisions : Prop
  inverseSquareLawTerm : inverseSquareLaw
  singularityAtCollisionTerm : singularityAtCollision
  analyticExceptCollisionsTerm : analyticExceptCollisions

structure GravitationalPotentialEvidence (Gp : GravitationalPotentialPackage) where
  inverseSquareLawClosed : Gp.inverseSquareLaw
  singularityAtCollisionClosed : Gp.singularityAtCollision
  analyticExceptCollisionsClosed : Gp.analyticExceptCollisions

def GravitationalPotentialClosed (Gp : GravitationalPotentialPackage) : Prop :=
  Gp.inverseSquareLaw ∧ Gp.singularityAtCollision ∧ Gp.analyticExceptCollisions

theorem gravitational_potential_closed_from_evidence
    (Gp : GravitationalPotentialPackage)
    (E : GravitationalPotentialEvidence Gp) :
    GravitationalPotentialClosed Gp := by
  exact And.intro E.inverseSquareLawClosed
    (And.intro E.singularityAtCollisionClosed E.analyticExceptCollisionsClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
