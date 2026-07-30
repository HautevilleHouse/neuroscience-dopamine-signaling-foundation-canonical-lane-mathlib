import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  spikeTimingDependentPlasticity : Prop
  synapticWeightUpdate : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  dopamineModulation : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  synapticWeightUpdateClosed : H.synapticWeightUpdate
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  dopamineModulationClosed : H.dopamineModulation

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.spikeTimingDependentPlasticity ∧ H.synapticWeightUpdate ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.dopamineModulation

theorem hebbian_synaptic_plasticity_closed_from_evidence
    (H : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence H) :
    HebbianSynapticPlasticityClosed H := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.synapticWeightUpdateClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed E.dopamineModulationClosed)))

end HautevilleHouse
end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean