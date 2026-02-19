for %%i in (SetAcValueIndex) do (
    powercfg -%%i Scheme_Current Sub_Processor IdleStateMax 0
)

powercfg -SetActive Scheme_Current
