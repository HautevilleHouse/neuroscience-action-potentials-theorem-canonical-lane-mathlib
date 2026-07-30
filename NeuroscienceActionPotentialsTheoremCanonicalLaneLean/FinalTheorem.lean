import NeuroscienceActionPotentialsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

def ConstrainedActionPotentialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_action_potential_endgame (A : AdmissibleClass) :
    ConstrainedActionPotentialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse