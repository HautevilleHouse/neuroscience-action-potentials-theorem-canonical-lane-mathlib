import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure Synapse where
  presynapticVoltage : ℝ
  neurotransmitterRelease : ℝ
  receptorBinding : ℝ
  postsynapticConductance : ℝ
  synapticTimeConstant : ℝ
  synapticStrength : ℝ

structure SynapticTransmissionPackage where
  synapseModel : Synapse
  transmissionEquationClosed : Prop
  plasticityMechanismClosed : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  transmissionEquationClosedTerm : S.transmissionEquationClosed
  plasticityMechanismClosedTerm : S.plasticityMechanismClosed

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.transmissionEquationClosed ∧ S.plasticityMechanismClosed

theorem synaptic_transmission_closed_from_evidence
    (S : SynapticTransmissionPackage)
    (E : SynapticTransmissionEvidence S) : SynapticTransmissionClosed S := by
  exact And.intro E.transmissionEquationClosedTerm E.plasticityMechanismClosedTerm

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse