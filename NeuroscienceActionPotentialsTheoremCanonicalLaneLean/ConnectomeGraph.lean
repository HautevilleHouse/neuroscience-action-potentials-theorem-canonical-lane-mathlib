import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure ConnectomeGraph where
  nodes : Type u
  edges : Type v
  graphProperties : List (Prop)
  adjacencyMatrix : Prop
  communityStructure : Prop
  smallWorld : Prop
  degreeDistribution : Prop

structure ConnectomeEvidence (G : ConnectomeGraph) where
  graphPropertiesClosed : ∀ (p : Prop), p ∈ G.graphProperties → p
  adjacencyMatrixClosed : G.adjacencyMatrix
  communityStructureClosed : G.communityStructure
  smallWorldClosed : G.smallWorld
  degreeDistributionClosed : G.degreeDistribution

def ConnectomeClosed (G : ConnectomeGraph) : Prop :=
  G.adjacencyMatrix ∧ G.communityStructure ∧ G.smallWorld ∧ G.degreeDistribution

theorem connectome_closed_from_evidence (G : ConnectomeGraph) (E : ConnectomeEvidence G) :
    ConnectomeClosed G := by
  exact And.intro E.adjacencyMatrixClosed
    (And.intro E.communityStructureClosed
      (And.intro E.smallWorldClosed E.degreeDistributionClosed))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse