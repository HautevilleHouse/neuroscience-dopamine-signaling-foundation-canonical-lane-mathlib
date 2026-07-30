import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure DopamineSignalingCascadePackage where
  dopamineRelease : Prop
  receptorActivation : Prop
  campProduction : Prop
  proteinKinaseActivation : Prop
  geneExpressionRegulation : Prop
  behavioralOutput : Prop

structure DopamineSignalingCascadeEvidence (D : DopamineSignalingCascadePackage) where
  dopamineReleaseClosed : D.dopamineRelease
  receptorActivationClosed : D.receptorActivation
  campProductionClosed : D.campProduction
  proteinKinaseActivationClosed : D.proteinKinaseActivation
  geneExpressionRegulationClosed : D.geneExpressionRegulation
  behavioralOutputClosed : D.behavioralOutput

def DopamineSignalingCascadeClosed (D : DopamineSignalingCascadePackage) : Prop :=
  D.dopamineRelease ∧ D.receptorActivation ∧ D.campProduction ∧ D.proteinKinaseActivation ∧ D.geneExpressionRegulation ∧ D.behavioralOutput

theorem dopamine_signaling_cascade_closed_from_evidence (D : DopamineSignalingCascadePackage) (E : DopamineSignalingCascadeEvidence D) :
    DopamineSignalingCascadeClosed D := by
  exact And.intro E.dopamineReleaseClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.campProductionClosed
        (And.intro E.proteinKinaseActivationClosed
          (And.intro E.geneExpressionRegulationClosed E.behavioralOutputClosed))))

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse