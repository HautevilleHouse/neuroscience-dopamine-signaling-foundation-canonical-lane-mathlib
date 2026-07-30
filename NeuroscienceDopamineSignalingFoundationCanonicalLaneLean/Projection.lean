import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dopamineProjection : Projection DopamineEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dopamine_projection_idempotent (x : DopamineEndgameState) :
    dopamineProjection.toFun (dopamineProjection.toFun x) = dopamineProjection.toFun x := by
  exact dopamineProjection.idempotent x

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse