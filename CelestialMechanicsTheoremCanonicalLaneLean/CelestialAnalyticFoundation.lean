import celestialMechanicsTheoremCanonicalLaneLean.EndpointClassification

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CelestialAnalyticFoundation where
  threeBody : PrimitiveThreeBodySystem
  threeBodyEvidence : PrimitiveThreeBodySystem → Prop
  centralForce : PrimitiveCentralForceField
  centralForceEvidence : PrimitiveCentralForceField → Prop
  perturbation : PrimitivePerturbationSeries
  perturbationEvidence : PrimitivePerturbationSeries → Prop
  kamTorus : PrimitiveKAMTorus
  kamTorusEvidence : PrimitiveKAMTorus → Prop
  stability : StabilityPackage kamTorus
  stabilityEvidence : StabilityEvidence stability
  endpoint : EndpointClassificationPackage stability
  endpointEvidence : EndpointClassificationEvidence endpoint

def CelestialAnalyticFoundationClosed (A : CelestialAnalyticFoundation) : Prop :=
  (A.threeBodyEvidence A.threeBody) ∧
  (A.centralForceEvidence A.centralForce) ∧
  (A.perturbationEvidence A.perturbation) ∧
  (A.kamTorusEvidence A.kamTorus) ∧
  StabilityClosed A.stability ∧
  EndpointClassificationClosed A.endpoint

theorem celestial_analytic_foundation_closed_from_evidence
    (A : CelestialAnalyticFoundation) :
    CelestialAnalyticFoundationClosed A := by
  exact And.intro (A.threeBodyEvidence A.threeBody)
    (And.intro (A.centralForceEvidence A.centralForce)
      (And.intro (A.perturbationEvidence A.perturbation)
        (And.intro (A.kamTorusEvidence A.kamTorus)
          (And.intro (stability_closed_from_evidence A.stability A.stabilityEvidence)
            (endpoint_classification_closed_from_evidence A.endpoint A.endpointEvidence)))))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse