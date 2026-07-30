import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure IonChannel where
  channelType : String
  conductanceDensity : ℝ
  activationVariable : ℝ
  inactivationVariable : ℝ
  reversalPotential : ℝ
  openProbability : ℝ
  permeability : ℝ

structure IonChannelConductancePackage where
  sodiumChannel : IonChannel
  potassiumChannel : IonChannel
  leakChannel : IonChannel
  conductanceModelClosed : Prop
  voltageDependenceClosed : Prop

structure IonChannelConductanceEvidence (I : IonChannelConductancePackage) where
  conductanceModelClosedTerm : I.conductanceModelClosed
  voltageDependenceClosedTerm : I.voltageDependenceClosed

def IonChannelConductanceClosed (I : IonChannelConductancePackage) : Prop :=
  I.conductanceModelClosed ∧ I.voltageDependenceClosed

theorem ion_channel_conductance_closed_from_evidence (I : IonChannelConductancePackage)
    (E : IonChannelConductanceEvidence I) : IonChannelConductanceClosed I := by
  exact And.intro E.conductanceModelClosedTerm E.voltageDependenceClosedTerm

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse