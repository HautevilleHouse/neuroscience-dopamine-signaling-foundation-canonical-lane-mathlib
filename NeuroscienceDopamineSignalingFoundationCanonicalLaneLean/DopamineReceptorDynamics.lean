import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure DopamineReceptorPackage where
  receptorType : Type u
  activationState : Type v
  ligandBinding : Prop
  conformationalChange : Prop
  downstreamSignaling : Prop

structure DopamineReceptorEvidence (R : DopamineReceptorPackage) where
  ligandBindingClosed : R.ligandBinding
  conformationalChangeClosed : R.conformationalChange
  downstreamSignalingClosed : R.downstreamSignaling

def DopamineReceptorClosed (R : DopamineReceptorPackage) : Prop :=
  R.ligandBinding ∧ R.conformationalChange ∧ R.downstreamSignaling

theorem dopamine_receptor_closed_from_evidence (R : DopamineReceptorPackage)
    (E : DopamineReceptorEvidence R) : DopamineReceptorClosed R := by
  exact And.intro E.ligandBindingClosed (And.intro E.conformationalChangeClosed E.downstreamSignalingClosed)

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse