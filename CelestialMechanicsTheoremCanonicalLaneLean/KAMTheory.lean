import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.SymplecticIntegrators

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure KAMTheoryPackage {P : ThreeBodyProblemPackage}
    (I : SymplecticIntegratorPackage P) where
  invariantTori : Prop
  diophantineCondition : Prop
  perturbationSmall : Prop
  toriPersistence : Prop

structure KAMTheoryEvidence {P : ThreeBodyProblemPackage}
    {I : SymplecticIntegratorPackage P} (K : KAMTheoryPackage I) where
  invariantToriClosed : K.invariantTori
  diophantineConditionClosed : K.diophantineCondition
  perturbationSmallClosed : K.perturbationSmall
  toriPersistenceClosed : K.toriPersistence

def KAMTheoryClosed {P : ThreeBodyProblemPackage}
    {I : SymplecticIntegratorPackage P} (K : KAMTheoryPackage I) : Prop :=
  K.invariantTori ∧ K.diophantineCondition ∧ K.perturbationSmall ∧ K.toriPersistence

theorem kam_theory_closed_from_evidence {P : ThreeBodyProblemPackage}
    {I : SymplecticIntegratorPackage P} (K : KAMTheoryPackage I)
    (E : KAMTheoryEvidence K) : KAMTheoryClosed K := by
  exact And.intro E.invariantToriClosed
    (And.intro E.diophantineConditionClosed
      (And.intro E.perturbationSmallClosed E.toriPersistenceClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse