import NeuroscienceActionPotentialsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneCapacitance : ℝ
  ionChannels : List String
  nEquations : Nat
  gateDynamics : Prop
  actionPotentialGenerated : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  membraneCapacitancePositive : H.membraneCapacitance > 0
  gateDynamicsClosed : H.gateDynamics
  actionPotentialGeneratedClosed : H.actionPotentialGenerated

def HodgkinHuxleyModelClosed (H : HodgkinHuxleyModel) : Prop :=
  H.membraneCapacitance > 0 ∧ H.gateDynamics ∧ H.actionPotentialGenerated

theorem hodgkin_huxley_closed_from_evidence
    (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyModelClosed H := by
  exact And.intro E.membraneCapacitancePositive
    (And.intro E.gateDynamicsClosed E.actionPotentialGeneratedClosed)

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse