重新调整Windows的CPU调频，尽可能复刻Linux的governor效果，以实现更多用途  
台式和笔记本通用  

## 用途一览
[Performance]: ../bin/set-cpufreq-performance.bat
[Powersave]: ../bin/set-cpufreq-powersave.bat
[Ondemand]: ../bin/set-cpufreq-ondemand.bat
[Ondemand-50]: ../bin/set-cpufreq-ondemand-50.bat
[Ondemand-99]: ../bin/set-cpufreq-ondemand-99.bat
[Conservative]: ../bin/set-cpufreq-conservative.bat
[Conservative-50]: ../bin/set-cpufreq-conservative-50.bat
[Conservative-75]: ../bin/set-cpufreq-conservative-75.bat
[Conservative-99]: ../bin/set-cpufreq-conservative-99.bat

| 调频器            | 频率表现                | 性能表现   | 待机电压 | AC有效 | DC有效 |
| :---------------- | :---------------------- | :--------- | :------- | :----- | :----- |
| [Performance]     | 恒定最高频率            | 极致响应   | 最高     | ✅      | ❌      |
| [Powersave]       | 恒定最低频率            | 极致低功耗 | 最低     | ✅      | ✅      |
| [Ondemand]        | 按需积极提频            | 中等响应   | 中等     | ✅      | ✅      |
| [Ondemand-50]     | 下限50%基频按需积极提频 | 高响应     | 中等     | ✅      | ✅      |
| [Ondemand-99]     | 下限99%基频按需积极提频 | 超高响应   | 高       | ✅      | ✅      |
| [Conservative]    | 按需保守提频            | 中等响应   | 最低     | ✅      | ✅      |
| [Conservative-50] | 下限50%基频按需保守提频 | 高响应     | 低       | ✅      | ✅      |
| [Conservative-75] | 下限75%基频按需保守提频 | 高响应     | 中等     | ✅      | ✅      |
| [Conservative-99] | 下限99%基频按需保守提频 | 超高响应   | 高       | ✅      | ✅      |

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!IMPORTANT]  
> 需要注意OEM覆盖电源计划  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 极客组合
这里额外提供几种更极客的定制组合  

[C-State-Max-C1]: ../bin/set-cpucstate-maxc1.bat
[C-State-Default]: ../bin/set-cpucstate-default.bat

| 性能档位 | 服务器模式                           |
| :------- | :----------------------------------- |
| 最发烧   | [C-State-Max-C1] + [Performance]     |
| 最积极   | [C-State-Max-C1] + [Ondemand-99]     |
| 积极     | [C-State-Max-C1] + [Conservative-99] |
| 平衡     | [C-State-Max-C1] + [Ondemand-50]     |
| 养护     | [C-State-Max-C1] + [Conservative-50] |

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!IMPORTANT]  
> 需要注意OEM覆盖电源计划  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 等价参考
| Linux                | Windows          |
| :------------------- | :--------------- |
| sampling_rate        | PerfCheck        |
| freq_step            | PerfIncPol       |
| up_threshold         | PerfIncThreshold |
| down_threshold       | PerfDecThreshold |
| sampling_down_factor | PerfDecPol       |

## Credits
- https://www.kernel.org/doc/Documentation/cpu-freq/governors.txt
