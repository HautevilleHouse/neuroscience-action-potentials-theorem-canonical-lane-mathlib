import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure NeuralField where
  spatialDomain : ℝ → Prop
  activationLevel : ℝ → ℝ → ℝ -- function of space and time
  connectionKernel : ℝ → ℝ → ℝ
  thresholdFunction : ℝ → ℝ
  externalInput : ℝ → ℝ → ℝ

structure NeuralFieldDynamicsPackage where
  fieldModel : NeuralField
  fieldEquationClosed : Prop
  patternFormationCondition : Prop

structure NeuralFieldDynamicsEvidence (N : NeuralFieldDynamicsPackage) where
  fieldEquationClosedTerm : N.fieldEquationClosed
  patternFormationConditionTerm : N.patternFormationCondition

def NeuralFieldDynamicsClosed (N : NeuralFieldDynamicsPackage) : Prop :=
  N.fieldEquationClosed ∧ N.patternFormationCondition

theorem neural_field_dynamics_closed_from_evidence
    (N : NeuralFieldDynamicsPackage)
    (E : NeuralFieldDynamicsEvidence N) : NeuralFieldDynamicsClosed N := by
  exact And.intro E.fieldEquationClosedTerm E.patternFormationConditionTerm

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse