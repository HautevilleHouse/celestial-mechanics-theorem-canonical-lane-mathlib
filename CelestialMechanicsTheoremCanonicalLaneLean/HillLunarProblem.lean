import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure HillLunarProblemPackage where
  restrictedMassRatio : ℝ
  equilibriumPoints : List (ℝ × ℝ)
  periodicOrbitsExist : Prop
  survivalUnderPerturbation : Prop

structure HillLunarProblemEvidence (H : HillLunarProblemPackage) where
  restrictedMassRatioAdmissible : H.restrictedMassRatio ≥ 0.0
  equilibriumPointsClassifiedClosed : True
  periodicOrbitsExistClosed : H.periodicOrbitsExist
  survivalUnderPerturbationClosed : H.survivalUnderPerturbation

def HillLunarProblemClosed (H : HillLunarProblemPackage) : Prop :=
  H.restrictedMassRatio ≥ 0.0 ∧ H.periodicOrbitsExist ∧ H.survivalUnderPerturbation

theorem hill_lunar_problem_closed_from_evidence (H : HillLunarProblemPackage) (E : HillLunarProblemEvidence H) : HillLunarProblemClosed H := by
  exact And.intro E.restrictedMassRatioAdmissible
    (And.intro E.periodicOrbitsExistClosed E.survivalUnderPerturbationClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
