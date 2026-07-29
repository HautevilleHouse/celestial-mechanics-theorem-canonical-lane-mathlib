import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CentralConfigurationPackage where
  masses : List ℝ
  positions : List (ℝ × ℝ × ℝ)
  centerOfMassFixed : Prop
  gravitationalPotential : Prop
  collinearityAvoided : Prop

structure CentralConfigurationEvidence (C : CentralConfigurationPackage) where
  centerOfMassFixedClosed : C.centerOfMassFixed
  gravitationalPotentialClosed : C.gravitationalPotential
  collinearityAvoidedClosed : C.collinearityAvoided

def CentralConfigurationClosed (C : CentralConfigurationPackage) : Prop :=
  C.centerOfMassFixed ∧ C.gravitationalPotential ∧ C.collinearityAvoided

theorem central_configuration_closed_from_evidence (C : CentralConfigurationPackage)
    (E : CentralConfigurationEvidence C) : CentralConfigurationClosed C := by
  exact And.intro E.centerOfMassFixedClosed
    (And.intro E.gravitationalPotentialClosed E.collinearityAvoidedClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse