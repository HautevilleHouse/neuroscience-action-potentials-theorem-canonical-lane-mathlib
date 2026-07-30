import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure ActionPotentialPropagationPackage where
  axonGeometry : Type u
  myelinSheath : Type v
  ionChannelDistribution : Type w
  cableEquation : Prop
  propagationSpeed : Prop
  saltatoryConduction : Prop
  failureMechanism : Prop

structure ActionPotentialPropagationEvidence (A : ActionPotentialPropagationPackage) where
  cableEquationClosed : A.cableEquation
  propagationSpeedClosed : A.propagationSpeed
  saltatoryConductionClosed : A.saltatoryConduction
  failureMechanismClosed : A.failureMechanism

def ActionPotentialPropagationClosed (A : ActionPotentialPropagationPackage) : Prop :=
  A.cableEquation ∧ A.propagationSpeed ∧ A.saltatoryConduction ∧ A.failureMechanism

theorem action_potential_propagation_closed_from_evidence
    (A : ActionPotentialPropagationPackage)
    (E : ActionPotentialPropagationEvidence A) : ActionPotentialPropagationClosed A := by
  exact And.intro E.cableEquationClosed
    (And.intro E.propagationSpeedClosed
      (And.intro E.saltatoryConductionClosed E.failureMechanismClosed))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse
