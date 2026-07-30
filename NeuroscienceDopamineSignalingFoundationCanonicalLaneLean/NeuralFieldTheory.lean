import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  neuralActivityField : Type u
  connectivityKernel : Prop
  firingRateFunction : Prop
  wavePropagation : Prop
  patternFormation : Prop
  workingMemoryModel : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  connectivityKernelClosed : N.connectivityKernel
  firingRateFunctionClosed : N.firingRateFunction
  wavePropagationClosed : N.wavePropagation
  patternFormationClosed : N.patternFormation
  workingMemoryModelClosed : N.workingMemoryModel

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.connectivityKernel ∧ N.firingRateFunction ∧ N.wavePropagation ∧ N.patternFormation ∧ N.workingMemoryModel

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.connectivityKernelClosed
    (And.intro E.firingRateFunctionClosed
      (And.intro E.wavePropagationClosed
        (And.intro E.patternFormationClosed E.workingMemoryModelClosed)))

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse