import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure ConnectomicsPackage where
  neuronGraph : Prop
  synapseList : Prop
  connectionStrength : Prop
  networkMotifs : Prop
  smallWorldProperty : Prop
  modularStructure : Prop

structure ConnectomicsEvidence (P : ConnectomicsPackage) where
  neuronGraphClosed : P.neuronGraph
  synapseListClosed : P.synapseList
  connectionStrengthClosed : P.connectionStrength
  networkMotifsClosed : P.networkMotifs
  smallWorldPropertyClosed : P.smallWorldProperty
  modularStructureClosed : P.modularStructure

def ConnectomicsClosed (P : ConnectomicsPackage) : Prop :=
  P.neuronGraph ∧ P.synapseList ∧ P.connectionStrength ∧
  P.networkMotifs ∧ P.smallWorldProperty ∧ P.modularStructure

theorem connectomics_closed_from_evidence
    (P : ConnectomicsPackage) (E : ConnectomicsEvidence P) :
    ConnectomicsClosed P := by
  exact And.intro E.neuronGraphClosed
    (And.intro E.synapseListClosed
      (And.intro E.connectionStrengthClosed
        (And.intro E.networkMotifsClosed
          (And.intro E.smallWorldPropertyClosed E.modularStructureClosed))))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse
