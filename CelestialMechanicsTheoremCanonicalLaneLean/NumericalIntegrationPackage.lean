import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure NumericalIntegrationPackage where
  timeStep : ℝ
  integratorType : String
  energyDrift : Prop
  symplecticity : Prop
  stabilityBound : Prop

structure NumericalIntegrationEvidence (N : NumericalIntegrationPackage) where
  energyDriftClosed : N.energyDrift
  symplecticityClosed : N.symplecticity
  stabilityBoundClosed : N.stabilityBound

def NumericalIntegrationClosed (N : NumericalIntegrationPackage) : Prop :=
  N.energyDrift ∧ N.symplecticity ∧ N.stabilityBound

theorem numerical_integration_closed_from_evidence
    (N : NumericalIntegrationPackage) (E : NumericalIntegrationEvidence N) :
    NumericalIntegrationClosed N := by
  exact And.intro E.energyDriftClosed
    (And.intro E.symplecticityClosed E.stabilityBoundClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
