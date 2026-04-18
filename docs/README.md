重新调整Windows的CPU调频，尽可能复刻Linux的governor效果，并实现更多用途  
台式和笔记本通用  

## CPU频率调整
[AC-HCF-Ondemand       ]: ../bin/ac/set-ac-cpufreq-hcf-ondemand.bat
[AC-HCF-Ondemand-50    ]: ../bin/ac/set-ac-cpufreq-hcf-ondemand-50.bat
[AC-HCF-Ondemand-75    ]: ../bin/ac/set-ac-cpufreq-hcf-ondemand-75.bat
[AC-HCF-Ondemand-99    ]: ../bin/ac/set-ac-cpufreq-hcf-ondemand-99.bat
[AC-SCF-Ondemand       ]: ../bin/ac/set-ac-cpufreq-scf-ondemand.bat
[AC-SCF-Ondemand-50    ]: ../bin/ac/set-ac-cpufreq-scf-ondemand-50.bat
[AC-SCF-Ondemand-75    ]: ../bin/ac/set-ac-cpufreq-scf-ondemand-75.bat
[AC-SCF-Ondemand-99    ]: ../bin/ac/set-ac-cpufreq-scf-ondemand-99.bat
[AC-SCF-Conservative   ]: ../bin/ac/set-ac-cpufreq-scf-conservative.bat
[AC-SCF-Conservative-50]: ../bin/ac/set-ac-cpufreq-scf-conservative-50.bat
[AC-SCF-Conservative-75]: ../bin/ac/set-ac-cpufreq-scf-conservative-75.bat
[AC-SCF-Conservative-99]: ../bin/ac/set-ac-cpufreq-scf-conservative-99.bat
[AC-SCF-ConstantBase   ]: ../bin/ac/set-ac-cpufreq-scf-constantbase.bat
[AC-SCF-ConstantMax    ]: ../bin/ac/set-ac-cpufreq-scf-constantmax.bat

[DC-HCF-Ondemand       ]: ../bin/dc/set-dc-cpufreq-hcf-ondemand.bat
[DC-HCF-Ondemand-50    ]: ../bin/dc/set-dc-cpufreq-hcf-ondemand-50.bat
[DC-HCF-Ondemand-75    ]: ../bin/dc/set-dc-cpufreq-hcf-ondemand-75.bat
[DC-HCF-Ondemand-99    ]: ../bin/dc/set-dc-cpufreq-hcf-ondemand-99.bat
[DC-SCF-Ondemand       ]: ../bin/dc/set-dc-cpufreq-scf-ondemand.bat
[DC-SCF-Ondemand-50    ]: ../bin/dc/set-dc-cpufreq-scf-ondemand-50.bat
[DC-SCF-Ondemand-75    ]: ../bin/dc/set-dc-cpufreq-scf-ondemand-75.bat
[DC-SCF-Ondemand-99    ]: ../bin/dc/set-dc-cpufreq-scf-ondemand-99.bat
[DC-SCF-Conservative   ]: ../bin/dc/set-dc-cpufreq-scf-conservative.bat
[DC-SCF-Conservative-50]: ../bin/dc/set-dc-cpufreq-scf-conservative-50.bat
[DC-SCF-Conservative-75]: ../bin/dc/set-dc-cpufreq-scf-conservative-75.bat
[DC-SCF-Conservative-99]: ../bin/dc/set-dc-cpufreq-scf-conservative-99.bat
[DC-SCF-ConstantBase   ]: ../bin/dc/set-dc-cpufreq-scf-constantbase.bat

- ## 表现一览
  | 调频器              | 频率表现                  | 性能表现 | 待机电压 |
  | :------------------ | :------------------------ | :------- | :------- |
  | ConstantMax         | 恒定最高频率              | 极致响应 | 最高     |
  | ConstantBase        | 恒定基本频率              | 最佳能效 | 高       |
  | HCF-Ondemand        | 按需激进提频              | 超高响应 | 中等     |
  | HCF-Ondemand-50     | 按需激进提频(下限50%基频) | 超高响应 | 中等     |
  | HCF-Ondemand-75     | 按需激进提频(下限75%基频) | 超高响应 | 中等     |
  | HCF-Ondemand-99     | 按需激进提频(下限99%基频) | 超高响应 | 高       |
  | SCF-Ondemand        | 按需积极提频              | 高响应   | 低       |
  | SCF-Ondemand-50     | 按需积极提频(下限50%基频) | 高响应   | 低       |
  | SCF-Ondemand-75     | 按需积极提频(下限75%基频) | 高响应   | 中等     |
  | SCF-Ondemand-99     | 按需积极提频(下限99%基频) | 超高响应 | 高       |
  | SCF-Conservative    | 按需保守提频              | 中等响应 | 低       |
  | SCF-Conservative-50 | 按需保守提频(下限50%基频) | 中等响应 | 低       |
  | SCF-Conservative-75 | 按需保守提频(下限75%基频) | 中等响应 | 中等     |
  | SCF-Conservative-99 | 按需保守提频(下限99%基频) | 高响应   | 高       |

- ## 用途一览
  | 调频器              | AC用                     | DC用                     |
  | :------------------ | :----------------------- | :----------------------- |
  | ConstantMax         | [AC-SCF-ConstantMax]     | ❌                        |
  | ConstantBase        | [AC-SCF-ConstantBase]    | [DC-SCF-ConstantBase]    |
  | HCF-Ondemand        | [AC-HCF-Ondemand]        | [DC-HCF-Ondemand]        |
  | HCF-Ondemand-50     | [AC-HCF-Ondemand-50]     | [DC-HCF-Ondemand-50]     |
  | HCF-Ondemand-75     | [AC-HCF-Ondemand-75]     | [DC-HCF-Ondemand-75]     |
  | HCF-Ondemand-99     | [AC-HCF-Ondemand-99]     | [DC-HCF-Ondemand-99]     |
  | SCF-Ondemand        | [AC-SCF-Ondemand]        | [DC-SCF-Ondemand]        |
  | SCF-Ondemand-50     | [AC-SCF-Ondemand-50]     | [DC-SCF-Ondemand-50]     |
  | SCF-Ondemand-75     | [AC-SCF-Ondemand-75]     | [DC-SCF-Ondemand-75]     |
  | SCF-Ondemand-99     | [AC-SCF-Ondemand-99]     | [DC-SCF-Ondemand-99]     |
  | SCF-Conservative    | [AC-SCF-Conservative]    | [DC-SCF-Conservative]    |
  | SCF-Conservative-50 | [AC-SCF-Conservative-50] | [DC-SCF-Conservative-50] |
  | SCF-Conservative-75 | [AC-SCF-Conservative-75] | [DC-SCF-Conservative-75] |
  | SCF-Conservative-99 | [AC-SCF-Conservative-99] | [DC-SCF-Conservative-99] |

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!IMPORTANT]  
> 需要注意OEM覆盖电源计划  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## CPU C-State调整
这里额外提供控制C-State，可以实现服务器模式/极客定制  

- 限制AC C-State最深为C1: [set-ac-cpucstate-maxc1.bat](../bin/ac/set-ac-cpucstate-maxc1.bat)
- 重置AC C-State: [reset-ac-cpucstate-default.bat](../bin/ac/reset-ac-cpucstate-default.bat)

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 重置修改
运行 [reset-schemes-default.bat](../bin/reset-schemes-default.bat)

> [!NOTE]  
> 也会重置`关屏` `睡眠` `休眠`的时间  

## 等价参考
| Linux                | Windows          |
| :------------------- | :--------------- |
| sampling_rate        | PerfCheck        |
| up_threshold         | PerfIncThreshold |
| down_threshold       | PerfDecThreshold |
| freq_step            | PerfIncPol       |
| sampling_down_factor | PerfDecPol       |

## Credits
- https://learn.microsoft.com/windows-hardware/customize/power-settings/static-configuration-options-for-the-performance-state-engine
- https://www.kernel.org/doc/Documentation/cpu-freq/governors.txt
