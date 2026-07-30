import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure HebbianLearningPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeightUpdate : Prop
  correlationDetect : Prop
  plasticityModel : Prop

structure HebbianLearningEvidence (P : HebbianLearningPackage) where
  presynapticActivityClosed : P.presynapticActivity
  postsynapticActivityClosed : P.postsynapticActivity
  synapticWeightUpdateClosed : P.synapticWeightUpdate
  correlationDetectClosed : P.correlationDetect
  plasticityModelClosed : P.plasticityModel

def HebbianLearningClosed (P : HebbianLearningPackage) : Prop :=
  P.presynapticActivity ∧ P.postsynapticActivity ∧ P.synapticWeightUpdate ∧
  P.correlationDetect ∧ P.plasticityModel

theorem hebbian_learning_closed_from_evidence
    (P : HebbianLearningPackage) (E : HebbianLearningEvidence P) :
    HebbianLearningClosed P := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.synapticWeightUpdateClosed
        (And.intro E.correlationDetectClosed E.plasticityModelClosed)))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse
