import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure SynapticPlasticity where
  hebbianRule : Prop
  ltpInduction : Prop
  ltdInduction : Prop
  spikeTimingDependence : Prop

structure SynapticPlasticityEvidence (P : SynapticPlasticity) where
  hebbianRuleClosed : P.hebbianRule
  ltpInductionClosed : P.ltpInduction
  ltdInductionClosed : P.ltdInduction
  spikeTimingDependenceClosed : P.spikeTimingDependence

def SynapticPlasticityClosed (P : SynapticPlasticity) : Prop :=
  P.hebbianRule ∧ P.ltpInduction ∧ P.ltdInduction ∧ P.spikeTimingDependence

theorem synaptic_plasticity_closed_from_evidence (P : SynapticPlasticity) (E : SynapticPlasticityEvidence P) :
    SynapticPlasticityClosed P := by
  exact And.intro E.hebbianRuleClosed
    (And.intro E.ltpInductionClosed
      (And.intro E.ltdInductionClosed E.spikeTimingDependenceClosed))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse