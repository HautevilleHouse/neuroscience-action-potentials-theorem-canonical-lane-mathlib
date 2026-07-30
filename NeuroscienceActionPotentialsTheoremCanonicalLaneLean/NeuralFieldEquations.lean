import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure NeuralFieldSystem where
  firingRateField : Type
  synapticKernel : Type
  externalInput : Prop
  integroDifferentialEquation : Prop
  stationarySolutions : Prop

structure NeuralFieldEvidence (N : NeuralFieldSystem) where
  externalInputClosed : N.externalInput
  integroDifferentialEquationClosed : N.integroDifferentialEquation
  stationarySolutionsClosed : N.stationarySolutions

def NeuralFieldClosed (N : NeuralFieldSystem) : Prop :=
  N.externalInput ∧ N.integroDifferentialEquation ∧ N.stationarySolutions

theorem neural_field_closed_from_evidence (N : NeuralFieldSystem)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.externalInputClosed
    (And.intro E.integroDifferentialEquationClosed E.stationarySolutionsClosed)

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse