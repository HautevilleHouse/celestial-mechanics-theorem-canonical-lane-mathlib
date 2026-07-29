import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure KeplerOrbitPackage where
  centralMass : ℝ
  orbitType : Type u
  semiMajorAxis : ℝ
  eccentricity : ℝ
  orbitalPeriod : ℝ
  orbitalEnergy : Prop
  angularMomentum : Prop

structure KeplerOrbitEvidence (K : KeplerOrbitPackage) where
  orbitalEnergyClosed : K.orbitalEnergy
  angularMomentumClosed : K.angularMomentum

def KeplerOrbitClosed (K : KeplerOrbitPackage) : Prop :=
  K.orbitalEnergy ∧ K.angularMomentum

theorem kepler_orbit_closed_from_evidence (K : KeplerOrbitPackage) (E : KeplerOrbitEvidence K) :
    KeplerOrbitClosed K := by
  exact And.intro E.orbitalEnergyClosed E.angularMomentumClosed

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
