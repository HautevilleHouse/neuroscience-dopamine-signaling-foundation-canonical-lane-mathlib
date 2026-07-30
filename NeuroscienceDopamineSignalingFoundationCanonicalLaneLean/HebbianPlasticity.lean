import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  spikeTimingDependence : Prop
  synapticWeightUpdate : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  spikeTimingDependenceClosed : H.spikeTimingDependence
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.spikeTimingDependence ∧ H.synapticWeightUpdate ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.spikeTimingDependenceClosed
        (And.intro E.synapticWeightUpdateClosed
          (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))))

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse