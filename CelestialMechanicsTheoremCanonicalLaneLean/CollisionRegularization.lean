import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.NBodyEquations

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CollisionRegularizationPackage {Gp : GravitationalPotentialPackage}
    {Eqt : NBodyEquationsPackage Gp} where
  collisionSet : Type u
  regularizedExtension : Prop
  blowupAnalysis : Prop
  localExistenceThroughCollision : Prop
  regularizedExtensionTerm : regularizedExtension
  blowupAnalysisTerm : blowupAnalysis
  localExistenceThroughCollisionTerm : localExistenceThroughCollision

structure CollisionRegularizationEvidence {Gp : GravitationalPotentialPackage}
    {Eqt : NBodyEquationsPackage Gp}
    (R : CollisionRegularizationPackage Gp Eqt) where
  regularizedExtensionClosed : R.regularizedExtension
  blowupAnalysisClosed : R.blowupAnalysis
  localExistenceThroughCollisionClosed : R.localExistenceThroughCollision

def CollisionRegularizationClosed {Gp : GravitationalPotentialPackage}
    {Eqt : NBodyEquationsPackage Gp}
    (R : CollisionRegularizationPackage Gp Eqt) : Prop :=
  R.regularizedExtension ∧ R.blowupAnalysis ∧ R.localExistenceThroughCollision

theorem collision_regularization_closed_from_evidence
    {Gp : GravitationalPotentialPackage} {Eqt : NBodyEquationsPackage Gp}
    (R : CollisionRegularizationPackage Gp Eqt)
    (E : CollisionRegularizationEvidence R) : CollisionRegularizationClosed R := by
  exact And.intro E.regularizedExtensionClosed
    (And.intro E.blowupAnalysisClosed E.localExistenceThroughCollisionClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
