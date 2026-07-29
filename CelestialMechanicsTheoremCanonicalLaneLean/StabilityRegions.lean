import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure StabilityRegionPackage where
  centralBodyMass : ℝ
  secondaryBodies : List ℝ
  orbitalElementsAdmissible : Prop
  resonanceFree : Prop
  kozaiMechanismActive : Prop
  meanMotionResonancesAvoided : Prop

structure StabilityRegionEvidence (S : StabilityRegionPackage) where
  orbitalElementsAdmissibleClosed : S.orbitalElementsAdmissible
  resonanceFreeClosed : S.resonanceFree
  kozaiMechanismActiveClosed : S.kozaiMechanismActive
  meanMotionResonancesAvoidedClosed : S.meanMotionResonancesAvoided

def StabilityRegionClosed (S : StabilityRegionPackage) : Prop :=
  S.orbitalElementsAdmissible ∧ S.resonanceFree ∧ S.kozaiMechanismActive ∧ S.meanMotionResonancesAvoided

theorem stability_region_closed_from_evidence (S : StabilityRegionPackage) (E : StabilityRegionEvidence S) : StabilityRegionClosed S := by
  exact And.intro E.orbitalElementsAdmissibleClosed
    (And.intro E.resonanceFreeClosed
      (And.intro E.kozaiMechanismActiveClosed E.meanMotionResonancesAvoidedClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
