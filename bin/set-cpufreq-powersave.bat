for %%i in (SetAcValueIndex SetDcValueIndex) do (
    powercfg -%%i Scheme_Current Sub_Processor PerfAutonomous 0
    powercfg -%%i Scheme_Current Sub_Processor PerfCheck 16

    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin 0
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin1 0
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMin2 0
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax 100
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax1 100
    powercfg -%%i Scheme_Current Sub_Processor ProcThrottleMax2 100
    powercfg -%%i Scheme_Current Sub_Processor ProcFreqMax 100
    powercfg -%%i Scheme_Current Sub_Processor ProcFreqMax1 100
    powercfg -%%i Scheme_Current Sub_Processor ProcFreqMax2 100

    powercfg -%%i Scheme_Current Sub_Processor PerfBoostMode 0
    powercfg -%%i Scheme_Current Sub_Processor PerfBoostPol 0
    powercfg -%%i Scheme_Current Sub_Processor PerfIncThreshold 100
    powercfg -%%i Scheme_Current Sub_Processor PerfIncThreshold1 100
    powercfg -%%i Scheme_Current Sub_Processor PerfDecThreshold 100
    powercfg -%%i Scheme_Current Sub_Processor PerfDecThreshold1 100
    powercfg -%%i Scheme_Current Sub_Processor PerfIncPol 1
    powercfg -%%i Scheme_Current Sub_Processor PerfIncPol1 1
    powercfg -%%i Scheme_Current Sub_Processor PerfDecPol 2
    powercfg -%%i Scheme_Current Sub_Processor PerfDecPol1 2
)

powercfg -SetActive Scheme_Current
