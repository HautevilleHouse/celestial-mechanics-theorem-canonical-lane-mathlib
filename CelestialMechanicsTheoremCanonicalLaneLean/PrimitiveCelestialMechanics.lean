import celestialMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure PrimitiveThreeBodySystem where
  masses : List ℝ
  positions : List (ℝ × ℝ × ℝ)
  velocities : List (ℝ × ℝ × ℝ)
  initialConditionsDefined : Prop
  equationsOfMotionDefined : Prop
  conservedQuantities : Prop
  initialConditionsDefinedTerm : initialConditionsDefined
  equationsOfMotionDefinedTerm : equationsOfMotionDefined
  conservedQuantitiesTerm : conservedQuantities

structure PrimitiveCentralForceField where
  potentialType : Type
  forceFieldDefined : Prop
  angularMomentumConserved : Prop
  energyConserved : Prop
  forceFieldDefinedTerm : forceFieldDefined
  angularMomentumConservedTerm : angularMomentumConserved
  energyConservedTerm : energyConserved

structure PrimitivePerturbationSeries where
  expansionOrder : Nat
  smallParameter : ℝ
  secularTerms : Prop
  resonanceTerms : Prop
  secularTermsTerm : secularTerms
  resonanceTermsTerm : resonanceTerms

structure PrimitiveKAMTorus where
  dimension : Nat
  frequencyVector : List ℝ
  nondegeneracyCondition : Prop
  persistedUnderSmallPerturbation : Prop
  nondegeneracyConditionTerm : nondegeneracyCondition
  persistedUnderSmallPerturbationTerm : persistedUnderSmallPerturbation

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse