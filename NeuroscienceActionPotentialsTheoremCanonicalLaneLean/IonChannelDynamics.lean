import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure IonChannelDynamicsPackage where
  voltageGatedSodium : Prop
  voltageGatedPotassium : Prop
  leakageChannels : Prop
  activationInactivation : Prop
  conductanceModel : Prop

structure IonChannelDynamicsEvidence (P : IonChannelDynamicsPackage) where
  voltageGatedSodiumClosed : P.voltageGatedSodium
  voltageGatedPotassiumClosed : P.voltageGatedPotassium
  leakageChannelsClosed : P.leakageChannels
  activationInactivationClosed : P.activationInactivation
  conductanceModelClosed : P.conductanceModel

def IonChannelDynamicsClosed (P : IonChannelDynamicsPackage) : Prop :=
  P.voltageGatedSodium ∧ P.voltageGatedPotassium ∧ P.leakageChannels ∧
  P.activationInactivation ∧ P.conductanceModel

theorem ion_channel_dynamics_closed_from_evidence
    (P : IonChannelDynamicsPackage) (E : IonChannelDynamicsEvidence P) :
    IonChannelDynamicsClosed P := by
  exact And.intro E.voltageGatedSodiumClosed
    (And.intro E.voltageGatedPotassiumClosed
      (And.intro E.leakageChannelsClosed
        (And.intro E.activationInactivationClosed E.conductanceModelClosed)))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse
