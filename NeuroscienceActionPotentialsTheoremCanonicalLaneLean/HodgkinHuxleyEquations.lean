import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneCapacitance : ℝ
  ionChannelDensities : ℝ × ℝ × ℝ  -- Na, K, leak
  reversalPotentials : ℝ × ℝ × ℝ
  gatingVariables : ℝ × ℝ × ℝ  -- m, h, n
  time : ℝ
  voltage : ℝ
  stimulusCurrent : ℝ
  dvdt : ℝ
  dmdt : ℝ
  dhdt : ℝ
  dndt : ℝ

structure HodgkinHuxleyPackage where
  model : HodgkinHuxleyModel
  equationsClosed : Prop
  spikeGenerationCondition : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  equationsClosedTerm : H.equationsClosed
  spikeGenerationConditionTerm : H.spikeGenerationCondition

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.equationsClosed ∧ H.spikeGenerationCondition

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.equationsClosedTerm E.spikeGenerationConditionTerm

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse