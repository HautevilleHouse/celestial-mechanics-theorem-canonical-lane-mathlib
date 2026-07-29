import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure ThreeBodyRegularizationPackage where
  collisionRemoval : Prop
  leviCivitaRegularization : Prop
  ksRegularization : Prop
  globalTimeSteppingPossible : Prop

structure ThreeBodyRegularizationEvidence (R : ThreeBodyRegularizationPackage) where
  collisionRemovalClosed : R.collisionRemoval
  leviCivitaRegularizationClosed : R.leviCivitaRegularization
  ksRegularizationClosed : R.ksRegularization
  globalTimeSteppingPossibleClosed : R.globalTimeSteppingPossible

def ThreeBodyRegularizationClosed (R : ThreeBodyRegularizationPackage) : Prop :=
  R.collisionRemoval ∧ R.leviCivitaRegularization ∧ R.ksRegularization ∧ R.globalTimeSteppingPossible

theorem three_body_regularization_closed_from_evidence (R : ThreeBodyRegularizationPackage) (E : ThreeBodyRegularizationEvidence R) : ThreeBodyRegularizationClosed R := by
  exact And.intro E.collisionRemovalClosed
    (And.intro E.leviCivitaRegularizationClosed
      (And.intro E.ksRegularizationClosed E.globalTimeSteppingPossibleClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
