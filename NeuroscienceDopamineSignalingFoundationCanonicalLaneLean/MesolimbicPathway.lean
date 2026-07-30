import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundation

structure MesolimbicPathwayPackage where
  ventralTegmentalArea : Prop
  nucleusAccumbens : Prop
  rewardPredictionError : Prop
  phasicDopamineRelease : Prop
  tonicDopamineRelease : Prop
  behavioralReinforcement : Prop

structure MesolimbicPathwayEvidence (M : MesolimbicPathwayPackage) where
  ventralTegmentalAreaClosed : M.ventralTegmentalArea
  nucleusAccumbensClosed : M.nucleusAccumbens
  rewardPredictionErrorClosed : M.rewardPredictionError
  phasicDopamineReleaseClosed : M.phasicDopamineRelease
  tonicDopamineReleaseClosed : M.tonicDopamineRelease
  behavioralReinforcementClosed : M.behavioralReinforcement

def MesolimbicPathwayClosed (M : MesolimbicPathwayPackage) : Prop :=
  M.ventralTegmentalArea ∧ M.nucleusAccumbens ∧ M.rewardPredictionError ∧
  M.phasicDopamineRelease ∧ M.tonicDopamineRelease ∧ M.behavioralReinforcement

theorem mesolimbic_pathway_closed_from_evidence (M : MesolimbicPathwayPackage)
    (E : MesolimbicPathwayEvidence M) : MesolimbicPathwayClosed M := by
  exact And.intro E.ventralTegmentalAreaClosed (And.intro E.nucleusAccumbensClosed
    (And.intro E.rewardPredictionErrorClosed (And.intro E.phasicDopamineReleaseClosed
      (And.intro E.tonicDopamineReleaseClosed E.behavioralReinforcementClosed))))

end NeuroscienceDopamineSignalingFoundation
end HautevilleHouse