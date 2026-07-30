import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure ConnectomicsDopaminePathwaysPackage where
  nigrostriatalPathway : Prop
  mesolimbicPathway : Prop
  mesocorticalPathway : Prop
  tuberoinfundibularPathway : Prop
  pathwaySpecificProjections : Prop
  connectivityMatrix : Prop

structure ConnectomicsDopaminePathwaysEvidence (C : ConnectomicsDopaminePathwaysPackage) where
  nigrostriatalPathwayClosed : C.nigrostriatalPathway
  mesolimbicPathwayClosed : C.mesolimbicPathway
  mesocorticalPathwayClosed : C.mesocorticalPathway
  tuberoinfundibularPathwayClosed : C.tuberoinfundibularPathway
  pathwaySpecificProjectionsClosed : C.pathwaySpecificProjections
  connectivityMatrixClosed : C.connectivityMatrix

def ConnectomicsDopaminePathwaysClosed (C : ConnectomicsDopaminePathwaysPackage) : Prop :=
  C.nigrostriatalPathway ∧ C.mesolimbicPathway ∧ C.mesocorticalPathway ∧
  C.tuberoinfundibularPathway ∧ C.pathwaySpecificProjections ∧ C.connectivityMatrix

theorem connectomics_dopamine_pathways_closed_from_evidence
    (C : ConnectomicsDopaminePathwaysPackage) (E : ConnectomicsDopaminePathwaysEvidence C) :
    ConnectomicsDopaminePathwaysClosed C := by
  exact And.intro E.nigrostriatalPathwayClosed
    (And.intro E.mesolimbicPathwayClosed
      (And.intro E.mesocorticalPathwayClosed
        (And.intro E.tuberoinfundibularPathwayClosed
          (And.intro E.pathwaySpecificProjectionsClosed E.connectivityMatrixClosed))))

end HautevilleHouse
end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean