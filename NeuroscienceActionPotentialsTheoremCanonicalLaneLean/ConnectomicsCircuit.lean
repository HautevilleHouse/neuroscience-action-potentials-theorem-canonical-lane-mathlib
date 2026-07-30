import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure NeuralCircuit where
  neuronPopulation : Type
  synapticConnectivity : Type
  networkTopology : Prop
  signalPropagation : Prop
  synchronyMeasure : Prop

structure NeuralCircuitEvidence (C : NeuralCircuit) where
  networkTopologyClosed : C.networkTopology
  signalPropagationClosed : C.signalPropagation
  synchronyMeasureClosed : C.synchronyMeasure

def NeuralCircuitClosed (C : NeuralCircuit) : Prop :=
  C.networkTopology ∧ C.signalPropagation ∧ C.synchronyMeasure

theorem neural_circuit_closed_from_evidence (C : NeuralCircuit)
    (E : NeuralCircuitEvidence C) : NeuralCircuitClosed C := by
  exact And.intro E.networkTopologyClosed
    (And.intro E.signalPropagationClosed E.synchronyMeasureClosed)

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse