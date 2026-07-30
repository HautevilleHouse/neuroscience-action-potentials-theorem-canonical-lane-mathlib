import NeuroscienceActionPotentialsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuralSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralAdmittedObject where
  space : NeuralSpace
  neuronModel : Prop
  actionPotentialExists : Prop
  synapticInput : Type
  synapticTopology : TopologicalSpace synapticInput
  signalTransmitted : Prop
  conclusion : signalTransmitted

structure NeuralEndgameState where
  object : NeuralAdmittedObject

def ActionPotentialClosed (O : NeuralAdmittedObject) : Prop :=
  O.signalTransmitted

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse