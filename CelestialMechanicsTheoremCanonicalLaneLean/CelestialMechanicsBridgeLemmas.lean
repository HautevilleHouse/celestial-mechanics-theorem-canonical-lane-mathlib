import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CelestialMechanicsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CelestialMechanicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CelestialMechanicsTheoremCanonicalLaneLean
end HautevilleHouse
