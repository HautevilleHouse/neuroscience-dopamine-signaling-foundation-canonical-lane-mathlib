import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure DopaminergicSynapseAnalyticFoundation where
  presynaptic : PrimitivePresynapticTerminal
  cleft : PrimitiveSynapticCleft
  postsynaptic : PrimitivePostsynapticReceptor
  releaseEvidence : Prop
  bindingEvidence : Prop
  signalingEvidence : Prop
  releaseEvidenceTerm : releaseEvidence
  bindingEvidenceTerm : bindingEvidence
  signalingEvidenceTerm : signalingEvidence

def DopaminergicSynapseAnalyticFoundationClosed (A : DopaminergicSynapseAnalyticFoundation) : Prop :=
  A.releaseEvidence ∧ A.bindingEvidence ∧ A.signalingEvidence

theorem dopaminergic_synapse_analytic_foundation_closed_from_evidence
    (A : DopaminergicSynapseAnalyticFoundation) :
    DopaminergicSynapseAnalyticFoundationClosed A := by
  exact And.intro A.releaseEvidenceTerm
    (And.intro A.bindingEvidenceTerm A.signalingEvidenceTerm)

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse