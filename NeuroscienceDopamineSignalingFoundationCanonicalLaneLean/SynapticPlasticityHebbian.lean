import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapseStrength : Type w
  hebbianRule : Prop
  dopamineModulation : Prop
  plasticityOutcome : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  dopamineModulationClosed : H.dopamineModulation
  plasticityOutcomeClosed : H.plasticityOutcome

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.dopamineModulation ∧ H.plasticityOutcome

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.hebbianRuleClosed (And.intro E.dopamineModulationClosed E.plasticityOutcomeClosed)

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
