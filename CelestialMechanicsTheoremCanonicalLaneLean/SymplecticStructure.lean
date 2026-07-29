import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure SymplecticPackage where
  phaseSpace : Type u
  symplecticForm : Type v
  hamiltonianFunction : Prop
  poissonBracket : Prop
  conservationLaws : Prop

structure SymplecticEvidence (S : SymplecticPackage) where
  hamiltonianFunctionClosed : S.hamiltonianFunction
  poissonBracketClosed : S.poissonBracket
  conservationLawsClosed : S.conservationLaws

def SymplecticClosed (S : SymplecticPackage) : Prop :=
  S.hamiltonianFunction ∧ S.poissonBracket ∧ S.conservationLaws

theorem symplectic_closed_from_evidence (S : SymplecticPackage)
    (E : SymplecticEvidence S) : SymplecticClosed S := by
  exact And.intro E.hamiltonianFunctionClosed
    (And.intro E.poissonBracketClosed E.conservationLawsClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse