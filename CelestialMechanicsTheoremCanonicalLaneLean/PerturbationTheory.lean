import CelestialMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure PerturbationData where
  unperturbedSystem : Type u
  perturbationParameter : ℝ
  seriesExpansion : Type v

structure PerturbationTheoryPackage where
  data : PerturbationData
  existenceOfInvariantTori : Prop
  kolmogorovArnoldMoser : Prop
  averagingMethod : Prop
  stabilityBound : Prop

structure PerturbationEvidence (P : PerturbationTheoryPackage) where
  existenceOfInvariantToriClosed : P.existenceOfInvariantTori
  kolmogorovArnoldMoserClosed : P.kolmogorovArnoldMoser
  averagingMethodClosed : P.averagingMethod
  stabilityBoundClosed : P.stabilityBound

def PerturbationTheoryClosed (P : PerturbationTheoryPackage) : Prop :=
  P.existenceOfInvariantTori ∧ P.kolmogorovArnoldMoser ∧
  P.averagingMethod ∧ P.stabilityBound

theorem perturbation_theory_closed_from_evidence (P : PerturbationTheoryPackage)
    (E : PerturbationEvidence P) : PerturbationTheoryClosed P :=
  And.intro E.existenceOfInvariantToriClosed
    (And.intro E.kolmogorovArnoldMoserClosed
      (And.intro E.averagingMethodClosed E.stabilityBoundClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
