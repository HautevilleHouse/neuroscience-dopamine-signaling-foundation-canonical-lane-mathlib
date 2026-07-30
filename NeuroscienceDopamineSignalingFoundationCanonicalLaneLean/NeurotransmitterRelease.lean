import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundation

structure NeurotransmitterReleasePackage where
  vesicleDocking : Prop
  calciumInflux : Prop
  exocytosis : Prop
  reuptake : Prop
  autoreceptorFeedback : Prop

structure NeurotransmitterReleaseEvidence (N : NeurotransmitterReleasePackage) where
  vesicleDockingClosed : N.vesicleDocking
  calciumInfluxClosed : N.calciumInflux
  exocytosisClosed : N.exocytosis
  reuptakeClosed : N.reuptake
  autoreceptorFeedbackClosed : N.autoreceptorFeedback

def NeurotransmitterReleaseClosed (N : NeurotransmitterReleasePackage) : Prop :=
  N.vesicleDocking ∧ N.calciumInflux ∧ N.exocytosis ∧ N.reuptake ∧ N.autoreceptorFeedback

theorem neurotransmitter_release_closed_from_evidence (N : NeurotransmitterReleasePackage)
    (E : NeurotransmitterReleaseEvidence N) : NeurotransmitterReleaseClosed N := by
  exact And.intro E.vesicleDockingClosed (And.intro E.calciumInfluxClosed
    (And.intro E.exocytosisClosed (And.intro E.reuptakeClosed E.autoreceptorFeedbackClosed)))

end NeuroscienceDopamineSignalingFoundation
end HautevilleHouse