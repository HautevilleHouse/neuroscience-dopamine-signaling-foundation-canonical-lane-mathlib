import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure DopamineReceptorTypesPackage where
  d1Receptor : Type u
  d2Receptor : Type v
  d1Density : Prop
  d2Density : Prop
  d1ActivationPathway : Prop
  d2ActivationPathway : Prop

structure DopamineReceptorTypesEvidence (R : DopamineReceptorTypesPackage) where
  d1DensityClosed : R.d1Density
  d2DensityClosed : R.d2Density
  d1ActivationPathwayClosed : R.d1ActivationPathway
  d2ActivationPathwayClosed : R.d2ActivationPathway

def DopamineReceptorTypesClosed (R : DopamineReceptorTypesPackage) : Prop :=
  R.d1Density ∧ R.d2Density ∧ R.d1ActivationPathway ∧ R.d2ActivationPathway

theorem dopamine_receptor_types_closed_from_evidence
    (R : DopamineReceptorTypesPackage) (E : DopamineReceptorTypesEvidence R) :
    DopamineReceptorTypesClosed R := by
  exact And.intro E.d1DensityClosed (And.intro E.d2DensityClosed (And.intro E.d1ActivationPathwayClosed E.d2ActivationPathwayClosed))

end HautevilleHouse
end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean