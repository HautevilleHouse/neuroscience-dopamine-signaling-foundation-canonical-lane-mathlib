import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure DopamineReceptorPackage where
  receptorType : Type u
  gProteinCoupled : Prop
  campPathway : Prop
  d1LikeReceptor : Prop
  d2LikeReceptor : Prop
  downstreamEffects : Prop

structure DopamineReceptorEvidence (D : DopamineReceptorPackage) where
  gProteinCoupledClosed : D.gProteinCoupled
  campPathwayClosed : D.campPathway
  d1LikeReceptorClosed : D.d1LikeReceptor
  d2LikeReceptorClosed : D.d2LikeReceptor
  downstreamEffectsClosed : D.downstreamEffects

def DopamineReceptorClosed (D : DopamineReceptorPackage) : Prop :=
  D.gProteinCoupled ∧ D.campPathway ∧ D.d1LikeReceptor ∧ D.d2LikeReceptor ∧ D.downstreamEffects

theorem dopamine_receptor_closed_from_evidence (D : DopamineReceptorPackage) (E : DopamineReceptorEvidence D) : DopamineReceptorClosed D := by
  exact And.intro E.gProteinCoupledClosed (And.intro E.campPathwayClosed (And.intro E.d1LikeReceptorClosed (And.intro E.d2LikeReceptorClosed E.downstreamEffectsClosed)))

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse