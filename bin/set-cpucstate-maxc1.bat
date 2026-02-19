for %%i in (SetAcValueIndex) do (
    powercfg -%%i Scheme_Current Sub_Processor IdleStateMax 1
)

powercfg -SetActive Scheme_Current
