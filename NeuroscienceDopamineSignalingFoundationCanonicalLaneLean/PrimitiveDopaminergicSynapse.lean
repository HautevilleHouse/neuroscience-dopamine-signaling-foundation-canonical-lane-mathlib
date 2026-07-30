import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure PrimitivePresynapticTerminal where
  vesiclePool : Type
  releaseMechanism : Type
  dopamineSynthesis : Type
  synthesisCapacity : Prop
  releaseProbability : Prop
  synthesisCapacityTerm : synthesisCapacity
  releaseProbabilityTerm : releaseProbability

structure PrimitiveSynapticCleft where
  volume : Type
  diffusionDynamics : Type
  clearanceMechanisms : Type
  volumeTerm : volume
  diffusionDynamicsTerm : diffusionDynamics
  clearanceMechanismsTerm : clearanceMechanisms

structure PrimitivePostsynapticReceptor where
  receptorType : Type
  bindingAffinity : Type
  signalTransductionCascade : Type
  activationThreshold : Prop
  desensitizationDynamics : Prop
  activationThresholdTerm : activationThreshold
  desensitizationDynamicsTerm : desensitizationDynamics

structure PrimitiveDopaminergicSynapse where
  presynaptic : PrimitivePresynapticTerminal
  cleft : PrimitiveSynapticCleft
  postsynaptic : PrimitivePostsynapticReceptor
  signalingClosed : Prop
  signalingClosedTerm : signalingClosed

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse