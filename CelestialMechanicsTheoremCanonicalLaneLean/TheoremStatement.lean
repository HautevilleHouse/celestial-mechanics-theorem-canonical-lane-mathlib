import HautevilleHouse.CelestialMechanicsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "celestial-mechanics-canonical-lane",
    theoremName := "Celestial Mechanics Theorem",
    theoremObject := "CelestialMechanicsAdmittedObject",
    classicalBoundary := "N-body stability boundary carried as remainder",
    constrainedStatement := "constrained Celestial Mechanics theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse