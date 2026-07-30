import NeuroscienceActionPotentialsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ActionPotentialClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse