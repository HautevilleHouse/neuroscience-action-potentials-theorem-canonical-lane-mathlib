import NeuroscienceActionPotentialsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : NeuralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ActionPotentialClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse