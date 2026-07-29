import CelestialMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure ThreeBodyProblemData where
  masses : ℝ × ℝ × ℝ
  positions : ℝ³ × ℝ³ × ℝ³
  velocities : ℝ³ × ℝ³ × ℝ³

structure ThreeBodyPackage where
  problem : ThreeBodyProblemData
  hamiltonianFormulation : Prop
  symplecticStructure : Prop
  existenceOfSolutions : Prop
  stabilityAnalysis : Prop

structure ThreeBodyEvidence (P : ThreeBodyPackage) where
  hamiltonianFormulationClosed : P.hamiltonianFormulation
  symplecticStructureClosed : P.symplecticStructure
  existenceOfSolutionsClosed : P.existenceOfSolutions
  stabilityAnalysisClosed : P.stabilityAnalysis

def ThreeBodyClosed (P : ThreeBodyPackage) : Prop :=
  P.hamiltonianFormulation ∧ P.symplecticStructure ∧
  P.existenceOfSolutions ∧ P.stabilityAnalysis

theorem three_body_closed_from_evidence (P : ThreeBodyPackage) (E : ThreeBodyEvidence P) :
    ThreeBodyClosed P :=
  And.intro E.hamiltonianFormulationClosed
    (And.intro E.symplecticStructureClosed
      (And.intro E.existenceOfSolutionsClosed E.stabilityAnalysisClosed))

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
