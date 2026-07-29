import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.CelestialMechanicsCore

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure SymplecticIntegrationPackage where
  symplecticMapDefined : Prop
  energyConservationToOrder : Prop
  geometricIntegrationScheme : Prop
  longtimeStability : Prop

structure SymplecticIntegrationEvidence (P : SymplecticIntegrationPackage) where
  symplecticMapDefinedClosed : P.symplecticMapDefined
  energyConservationToOrderClosed : P.energyConservationToOrder
  geometricIntegrationSchemeClosed : P.geometricIntegrationScheme
  longtimeStabilityClosed : P.longtimeStability

def SymplecticIntegrationClosed (P : SymplecticIntegrationPackage) : Prop :=
  P.symplecticMapDefined ∧ P.energyConservationToOrder ∧
  P.geometricIntegrationScheme ∧ P.longtimeStability

theorem symplectic_integration_closed_from_evidence
    (P : SymplecticIntegrationPackage)
    (E : SymplecticIntegrationEvidence P) : SymplecticIntegrationClosed P := by
  exact And.intro E.symplecticMapDefinedClosed
    (And.intro E.energyConservationToOrderClosed
      (And.intro E.geometricIntegrationSchemeClosed E.longtimeStabilityClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse