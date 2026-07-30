import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  ionChannels : Type v
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakCurrent : Prop
  actionPotential : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakCurrentClosed : H.leakCurrent
  actionPotentialClosed : H.actionPotential

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakCurrent ∧ H.actionPotential

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumCurrentClosed
    (And.intro E.potassiumCurrentClosed (And.intro E.leakCurrentClosed E.actionPotentialClosed))

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse