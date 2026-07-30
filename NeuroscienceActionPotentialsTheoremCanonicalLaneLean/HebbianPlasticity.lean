import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  learningRate : Prop
  weightUpdateRule : Prop
  correlationDetection : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  stabilityCondition : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  learningRateClosed : H.learningRate
  weightUpdateRuleClosed : H.weightUpdateRule
  correlationDetectionClosed : H.correlationDetection
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  stabilityConditionClosed : H.stabilityCondition

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.learningRate ∧ H.weightUpdateRule ∧ H.correlationDetection ∧
  H.longTermPotentiation ∧ H.longTermDepression ∧ H.stabilityCondition

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.learningRateClosed
    (And.intro E.weightUpdateRuleClosed
      (And.intro E.correlationDetectionClosed
        (And.intro E.longTermPotentiationClosed
          (And.intro E.longTermDepressionClosed E.stabilityConditionClosed))))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse
