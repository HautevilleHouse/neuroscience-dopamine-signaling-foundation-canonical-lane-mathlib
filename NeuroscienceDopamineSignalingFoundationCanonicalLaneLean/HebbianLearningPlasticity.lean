import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure HebbianLearningPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  weightUpdate : Prop
  correlationRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianLearningEvidence (H : HebbianLearningPackage) where
  weightUpdateClosed : H.weightUpdate
  correlationRuleClosed : H.correlationRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianLearningClosed (H : HebbianLearningPackage) : Prop :=
  H.weightUpdate ∧ H.correlationRule ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningPackage) (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.weightUpdateClosed (And.intro E.correlationRuleClosed (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse