import CelestialMechanicsCanonicalLaneLean.NBodyDynamics

/-!
# Kepler Orbit Perturbation Package
-/

namespace HautevilleHouse
namespace CelestialMechanicsCanonicalLaneLean

structure KeplerOrbitPerturbationPackage where
  centralMass : ℝ
  reducedMass : ℝ
  semiMajorAxis : ℝ
  eccentricity : ℝ
  perturbationType : String
  perturbationMagnitude : ℝ
  orbitalElementsDrift : Prop
  longTermStability : Prop

structure KeplerOrbitPerturbationEvidence (K : KeplerOrbitPerturbationPackage) where
  orbitalElementsDriftClosed : K.orbitalElementsDrift
  longTermStabilityClosed : K.longTermStability

def KeplerOrbitPerturbationClosed (K : KeplerOrbitPerturbationPackage) : Prop :=
  K.orbitalElementsDrift ∧ K.longTermStability

theorem kepler_orbit_perturbation_closed_from_evidence
    (K : KeplerOrbitPerturbationPackage) (E : KeplerOrbitPerturbationEvidence K) :
    KeplerOrbitPerturbationClosed K := by
  exact And.intro E.orbitalElementsDriftClosed E.longTermStabilityClosed

end CelestialMechanicsCanonicalLaneLean
end HautevilleHouse