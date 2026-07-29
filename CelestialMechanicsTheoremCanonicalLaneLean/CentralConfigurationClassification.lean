import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.CollisionRegularization

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure CentralConfigurationClassificationPackage {Gp : GravitationalPotentialPackage}
    {Eqt : NBodyEquationsPackage Gp} {R : CollisionRegularizationPackage Gp Eqt} where
  centralConfigurations : Type u
  totalCollapseCondition : Prop
  shapeSpaceDecomposition : Prop
  centralConfigurationsTerm : centralConfigurations
  totalCollapseConditionTerm : totalCollapseCondition
  shapeSpaceDecompositionTerm : shapeSpaceDecomposition

structure CentralConfigurationClassificationEvidence
    {Gp : GravitationalPotentialPackage} {Eqt : NBodyEquationsPackage Gp}
    {R : CollisionRegularizationPackage Gp Eqt}
    (C : CentralConfigurationClassificationPackage Gp Eqt R) where
  centralConfigurationsClosed : C.centralConfigurations
  totalCollapseConditionClosed : C.totalCollapseCondition
  shapeSpaceDecompositionClosed : C.shapeSpaceDecomposition

def CentralConfigurationClassificationClosed
    {Gp : GravitationalPotentialPackage} {Eqt : NBodyEquationsPackage Gp}
    {R : CollisionRegularizationPackage Gp Eqt}
    (C : CentralConfigurationClassificationPackage Gp Eqt R) : Prop :=
  C.centralConfigurations ∧ C.totalCollapseCondition ∧ C.shapeSpaceDecomposition

theorem central_configuration_classification_closed_from_evidence
    {Gp : GravitationalPotentialPackage} {Eqt : NBodyEquationsPackage Gp}
    {R : CollisionRegularizationPackage Gp Eqt}
    (C : CentralConfigurationClassificationPackage Gp Eqt R)
    (E : CentralConfigurationClassificationEvidence C) :
    CentralConfigurationClassificationClosed C := by
  exact And.intro E.centralConfigurationsClosed
    (And.intro E.totalCollapseConditionClosed E.shapeSpaceDecompositionClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
