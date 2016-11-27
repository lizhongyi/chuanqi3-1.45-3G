@ECHO                           ┌───────────┐                  
@ECHO ┏━━━━━━━━━━━━┥ 注册必要 COM. 组件中 ┝━━━━━━━━━━━━┓
@ECHO ┃   ━━━━━━━━━   └───────────┘   ━━━━━━━━━   ┃
@ECHO ┃   ━━━━━━━━━         您需要耐心等候         ━━━━━━━━━   ┃
@ECHO ┃   ━━━━━━━━━        大约 20 秒钟时间        ━━━━━━━━━   ┃
@ECHO ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
@ECHO Off
@ECHO . 注册 Com 组件 000％
RegSVR32 dbscan.dll /s
RegSVR32 insrepim.dll /s
RegSVR32 msmdcxml.dll /s
RegSVR32 repbr.dll /s
@ECHO . 注册 Com 组件 010％
RegSVR32 repbrui.dll /s
RegSVR32 repodbc.dll /s
RegSVR32 mdt2dd.dll /s
RegSVR32 mdt2df.dll /s
@ECHO . 注册 Com 组件 020％
RegSVR32 mdt2fref.dll /s
RegSVR32 mdt2fw.dll /s
RegSVR32 mdt2gddo.dll /s
RegSVR32 mdt2gddr.dll /s
@ECHO . 注册 Com 组件 030％
RegSVR32 mdt2qd.dll /s
RegSVR32 msdt70.dll /s
RegSVR32 mdt2db.dll /s
RegSVR32 mdt2dbns.dll /s
@ECHO . 注册 Com 组件 040％
RegSVR32 sqldbg.dll /s
RegSVR32 msmdcb80.dll /s
RegSVR32 msmdgd80.dll /s
RegSVR32 msolap80.dll /s
@ECHO . 注册 Com 组件 050％
RegSVR32 msolui80.dll /s
RegSVR32 axscphst.DLL /s
RegSVR32 cdwtasks.dll /s
RegSVR32 cdwtskui.dll /s
@ECHO . 注册 Com 组件 060％
RegSVR32 ctasksui.dll /s
RegSVR32 custtask.DLL /s
RegSVR32 dtsffile.DLL /s
RegSVR32 dtspkg.dll /s
@ECHO . 注册 Com 组件 070％
RegSVR32 dtspump.DLL /s
RegSVR32 psdcscm.dll /s
RegSVR32 sqlvdir.dll /s
RegSVR32 stardds.dll /s
@ECHO . 注册 Com 组件 080％
RegSvr32 sqlmmc.dll /s
RegSvr32 sqlns.dll /s
RegSvr32 sqllex.dll /s
RegSvr32 sqldmo.dll /s
@ECHO . 注册 Com 组件 090％
RegSvr32 dtsui.dll /s
@copy repbr.dll c:\
RegSVR32 c:\repbr.dll /s
@ECHO . 注册 Com 组件 100％

@ECHO . 导入注册表信息请稍后....
regedit -s Bak.reg

@ECHO 注册服务器 %1 请稍后....
@ServerAdmin.exe 绿色SQL %1 . . 1
@ECHO 执行完毕.