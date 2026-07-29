import CelestialMechanicsCanonicalLaneLean.KeplerOrbitPerturbation

/-!
# Hamiltonian Mechanics Package
-/

namespace HautevilleHouse
namespace CelestialMechanicsCanonicalLaneLean

structure HamiltonianMechPackage where
  phaseSpaceDimension : ℕ
  generalizedCoordinates : Type
  conjugateMomenta : Type
  hamiltonianFunction : Type
  poissonBracketStructure : Prop
  canonicalTransformations : Prop
  liouvilleTheorem : Prop

structure HamiltonianMechEvidence (H : HamiltonianMechPackage) where
  poissonBracketStructureClosed : H.poissonBracketStructure
  canonicalTransformationsClosed : H.canonicalTransformations
  liouvilleTheoremClosed : H.liouvilleTheorem

def HamiltonianMechClosed (H : HamiltonianMechPackage) : Prop :=
  H.poissonBracketStructure ∧ H.canonicalTransformations ∧ H.liouvilleTheorem

theorem hamiltonian_mech_closed_from_evidence (H : HamiltonianMechPackage)
    (E : HamiltonianMechEvidence H) : HamiltonianMechClosed H := by
  exact And.intro E.poissonBracketStructureClosed
    (And.intro E.canonicalTransformationsClosed E.liouvilleTheoremClosed)

end CelestialMechanicsCanonicalLaneLean
end HautevilleHouse