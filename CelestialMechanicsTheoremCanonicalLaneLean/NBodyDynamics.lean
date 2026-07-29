import CelestialMechanicsCanonicalLaneLean.AdmissibleClass

/-!
# N-Body Dynamics Package
-/

namespace HautevilleHouse
namespace CelestialMechanicsCanonicalLaneLean

structure NBodyDynamicsPackage where
  nBodies : Nat
  masses : Vector ℝ nBodies
  positions : Vector (ℝ × ℝ × ℝ) nBodies
  velocities : Vector (ℝ × ℝ × ℝ) nBodies
  gravitationalConstant : ℝ
  equationsOfMotion : Prop
  conservedQuantities : Prop
  integrationScheme : Prop

structure NBodyDynamicsEvidence (N : NBodyDynamicsPackage) where
  equationsOfMotionClosed : N.equationsOfMotion
  conservedQuantitiesClosed : N.conservedQuantities
  integrationSchemeClosed : N.integrationScheme

def NBodyDynamicsClosed (N : NBodyDynamicsPackage) : Prop :=
  N.equationsOfMotion ∧ N.conservedQuantities ∧ N.integrationScheme

theorem nbody_dynamics_closed_from_evidence (N : NBodyDynamicsPackage)
    (E : NBodyDynamicsEvidence N) : NBodyDynamicsClosed N := by
  exact And.intro E.equationsOfMotionClosed
    (And.intro E.conservedQuantitiesClosed E.integrationSchemeClosed)

end CelestialMechanicsCanonicalLaneLean
end HautevilleHouse