import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceDopamineSignalingFoundationCanonicalLaneLean

structure DopamineAdmittedObject where
  neuronCircuit : Type
  dopamineSignal : Prop
  plasticityModel : Prop
  conclusion : dopamineSignal ∧ plasticityModel

def DopamineWitnessClosed (O : DopamineAdmittedObject) : Prop :=
  O.dopamineSignal ∧ O.plasticityModel

end NeuroscienceDopamineSignalingFoundationCanonicalLaneLean
end HautevilleHouse
