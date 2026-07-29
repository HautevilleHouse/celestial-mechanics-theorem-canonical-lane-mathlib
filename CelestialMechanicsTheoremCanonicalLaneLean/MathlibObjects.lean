import CelestialMechanicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CelestialMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CelestialMechanicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop

structure CelestialMechanicsAdmittedObject where
  space : CelestialMechanicsSpace
  nBodySystem : Prop
  newtonianDynamics : Prop
  perturbationModel : Prop
  stabilityCriterion : Prop
  conclusion : stabilityCriterion

structure CelestialMechanicsEndgameState where
  object : CelestialMechanicsAdmittedObject

def CelestialMechanicsWitnessClosed (O : CelestialMechanicsAdmittedObject) : Prop :=
  O.stabilityCriterion

end CelestialMechanicsCanonicalLaneLean
end HautevilleHouse