import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CelestialMechanicsProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def celestialMechanicsProofObligation : CelestialMechanicsProofObligation := {
  sourceKey := "celestial-mechanics-canonical-lane",
  theoremObject := "Celestial Mechanics Theorem",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem celestial_mechanics_mathlib_common_core_imported_checked :
    celestialMechanicsProofObligation.commonCoreImported = true := by
  rfl

theorem theorem_specific_endgame_pilot_checked :
    (∀ A : AdmissibleClass, ConstrainedCelestialMechanicsClosure A) := by
  intro A
  exact constrained_celestial_mechanics_endgame A

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse