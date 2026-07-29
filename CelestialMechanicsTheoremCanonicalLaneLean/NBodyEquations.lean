import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.GravitationalPotential

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure NBodyEquationsPackage {Gp : GravitationalPotentialPackage} where
  equationsOfMotion : Prop
  hamiltonianFormulation : Prop
  conservedQuantities : Prop
  equationsOfMotionTerm : equationsOfMotion
  hamiltonianFormulationTerm : hamiltonianFormulation
  conservedQuantitiesTerm : conservedQuantities

structure NBodyEquationsEvidence {Gp : GravitationalPotentialPackage}
    (Eqt : NBodyEquationsPackage Gp) where
  equationsOfMotionClosed : Eqt.equationsOfMotion
  hamiltonianFormulationClosed : Eqt.hamiltonianFormulation
  conservedQuantitiesClosed : Eqt.conservedQuantities

def NBodyEquationsClosed {Gp : GravitationalPotentialPackage}
    (Eqt : NBodyEquationsPackage Gp) : Prop :=
  Eqt.equationsOfMotion ∧ Eqt.hamiltonianFormulation ∧ Eqt.conservedQuantities

theorem n_body_equations_closed_from_evidence
    {Gp : GravitationalPotentialPackage} (Eqt : NBodyEquationsPackage Gp)
    (E : NBodyEquationsEvidence Eqt) : NBodyEquationsClosed Eqt := by
  exact And.intro E.equationsOfMotionClosed
    (And.intro E.hamiltonianFormulationClosed E.conservedQuantitiesClosed)

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
