import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsTheoremCanonicalLaneLean

structure HodgkinHuxleySystemPackage where
  membraneVoltage : Type u
  sodiumChannelGating : Type v
  potassiumChannelGating : Type w
  leakageChannel : Type x
  capacitance : Prop
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakageCurrent : Prop
  stimulusCurrent : Prop
  differentialEquations : Prop
  initialConditions : Prop

structure HodgkinHuxleySystemEvidence (H : HodgkinHuxleySystemPackage) where
  capacitanceClosed : H.capacitance
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakageCurrentClosed : H.leakageCurrent
  stimulusCurrentClosed : H.stimulusCurrent
  differentialEquationsClosed : H.differentialEquations
  initialConditionsClosed : H.initialConditions

def HodgkinHuxleySystemClosed (H : HodgkinHuxleySystemPackage) : Prop :=
  H.capacitance ∧ H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakageCurrent ∧
  H.stimulusCurrent ∧ H.differentialEquations ∧ H.initialConditions

theorem hodgkin_huxley_system_closed_from_evidence (H : HodgkinHuxleySystemPackage)
    (E : HodgkinHuxleySystemEvidence H) : HodgkinHuxleySystemClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.sodiumCurrentClosed
      (And.intro E.potassiumCurrentClosed
        (And.intro E.leakageCurrentClosed
          (And.intro E.stimulusCurrentClosed
            (And.intro E.differentialEquationsClosed E.initialConditionsClosed)))))

end NeuroscienceActionPotentialsTheoremCanonicalLaneLean
end HautevilleHouse
