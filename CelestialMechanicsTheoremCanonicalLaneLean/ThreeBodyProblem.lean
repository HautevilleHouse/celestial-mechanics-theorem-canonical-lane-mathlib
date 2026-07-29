import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.CelestialMechanicsObjects

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure ThreeBodyProblemPackage where
  masses : ℚ × ℚ × ℚ
  initialPositions : (ℚ × ℚ × ℚ) × (ℚ × ℚ × ℚ) × (ℚ × ℚ × ℚ)
  initialVelocities : (ℚ × ℚ × ℚ) × (ℚ × ℚ × ℚ) × (ℚ × ℚ × ℚ)
  equationsOfMotion : Prop
  centerOfMassFixed : Prop
  energyConserved : Prop
  angularMomentumConserved : Prop

structure ThreeBodyProblemEvidence (P : ThreeBodyProblemPackage) where
  equationsOfMotionClosed : P.equationsOfMotion
  centerOfMassFixedClosed : P.centerOfMassFixed
  energyConservedClosed : P.energyConserved
  angularMomentumConservedClosed : P.angularMomentumConserved

def ThreeBodyProblemClosed (P : ThreeBodyProblemPackage) : Prop :=
  P.equationsOfMotion ∧ P.centerOfMassFixed ∧ P.energyConserved ∧ P.angularMomentumConserved

theorem three_body_problem_closed_from_evidence (P : ThreeBodyProblemPackage)
    (E : ThreeBodyProblemEvidence P) : ThreeBodyProblemClosed P := by
  exact And.intro E.equationsOfMotionClosed
    (And.intro E.centerOfMassFixedClosed
      (And.intro E.energyConservedClosed E.angularMomentumConservedClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse