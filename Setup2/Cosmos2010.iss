#ifndef BuildConfiguration
	#error "No Build configuration defined!"
#endif

#if BuildConfiguration == "Devkit"
	; devkit releases are not compressed
	#pragma warning "Building Devkit release"
#elif BuildConfiguration == "Userkit"
	; userkit releases get compressed, and get languages included
	#pragma message "Building Userkit release"
	#define Compress true
	#define IncludeUILanguages true
#else
# error Unsupported configuration
#endif


; Cosmos Registry key
; Install assemblies
; Delete old user kit installer and task asm

[Setup]
AppId=CosmosUserKit
AppName=Cosmos User Kit
AppVerName=Cosmos User Kit Milestone 5
AppCopyright=Copyright � 2007-2010 The Cosmos Project
AppPublisher=Cosmos Project
AppPublisherURL=http://www.goCosmos.org/
AppSupportURL=http://www.goCosmos.org/
AppUpdatesURL=http://www.goCosmos.org/
AppVersion=0.5
DefaultDirName={userappdata}\Cosmos User Kit
DefaultGroupName=Cosmos User Kit
OutputDir=.\Setup2\Output
OutputBaseFilename=CosmosUserKit5
#ifdef Compress
Compression=lzma2/ultra64
InternalCompressLevel=ultra64
#else
Compression=none
InternalCompressLevel=none
#endif
SolidCompression=true
SourceDir=..
;Left Image should be 164x314
WizardImageFile=.\setup\images\cosmos.bmp
;Small Image should be 55x55
WizardSmallImageFile=.\setup\images\cosmos_small.bmp

; If you want all languages to be listed in the "Select Setup Language"
; dialog, even those that can't be displayed in the active code page,
; uncomment the following two lines.
UninstallLogMode=overwrite

; we're changing file associations, so:
ChangesAssociations=yes

#include "Code.inc"

[Languages]
Name: en; MessagesFile: compiler:Default.isl; InfoBeforeFile: .\setup2\Readme.txt
#ifdef IncludeUILanguages
Name: eu; MessagesFile: .\setup\Languages\Basque-1-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: ca; MessagesFile: .\setup\Languages\Catalan-4-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: cs; MessagesFile: .\setup\Languages\Czech-5-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: da; MessagesFile: .\setup\Languages\Danish-4-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: nl; MessagesFile: .\setup\Languages\Dutch-8-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: fi; MessagesFile: .\setup\Languages\Finnish-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: fr; MessagesFile: .\setup\Languages\French-15-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: de; MessagesFile: .\setup\Languages\German-2-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: hu; MessagesFile: .\setup\Languages\Hungarian-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: it; MessagesFile: .\setup\Languages\Italian-14-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: no; MessagesFile: .\setup\Languages\Norwegian-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: pl; MessagesFile: .\setup\Languages\Polish-8-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: pt; MessagesFile: .\setup\Languages\PortugueseStd-1-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: ru; MessagesFile: .\setup\Languages\Russian-19-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: sk; MessagesFile: .\setup\Languages\Slovak-6-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: sl; MessagesFile: .\setup\Languages\Slovenian-3-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
;InOffical:
Name: bg; MessagesFile: .\setup\Languages\InOfficial\Bulgarian-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: el; MessagesFile: .\setup\Languages\InOfficial\Greek-4-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: is; MessagesFile: .\setup\Languages\InOfficial\Icelandic-1-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: id; MessagesFile: .\setup\Languages\InOfficial\Indonesian-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: ja; MessagesFile: .\setup\Languages\InOfficial\Japanese-5-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: ko; MessagesFile: .\setup\Languages\InOfficial\Korean-5-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: ms; MessagesFile: .\setup\Languages\InOfficial\Malaysian-2-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: es; MessagesFile: .\setup\Languages\InOfficial\SpanishStd-2-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: sv; MessagesFile: .\setup\Languages\InOfficial\Swedish-8-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: tr; MessagesFile: .\setup\Languages\InOfficial\Turkish-3-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: uk; MessagesFile: .\setup\Languages\InOfficial\Ukrainian-5-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: cn; MessagesFile: .\setup\Languages\InOfficial\ChineseSimp-11-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
Name: tw; MessagesFile: .\setup\Languages\InOfficial\ChineseTrad-2-5.1.0.isl; InfoBeforeFile: .\setup2\Readme.txt
#endif

[Messages]
en.BeveledLabel=English
#ifdef IncludeUILanguages
eu.BeveledLabel=Basque
ca.BeveledLabel=Catalan
cs.BeveledLabel=Czech
da.BeveledLabel=Danish
nl.BeveledLabel=Dutch
fi.BeveledLabel=Finnish
fr.BeveledLabel=French
de.BeveledLabel=German
hu.BeveledLabel=Hungarian
it.BeveledLabel=Italian
no.BeveledLabel=Norwegian
pl.BeveledLabel=Polish
pt.BeveledLabel=Portuguese
ru.BeveledLabel=Russian
sk.BeveledLabel=Slovak
sl.BeveledLabel=Slovenian
;InOffical:
bg.BeveledLabel=Bulgarian
el.BeveledLabel=Greek
is.BeveledLabel=Icelandic
id.BeveledLabel=Indonesian
ja.BeveledLabel=Japanese
ko.BeveledLabel=Korean
ms.BeveledLabel=Malaysian
es.BeveledLabel=Spanish
sv.BeveledLabel=Swedish
tr.BeveledLabel=Turkish
uk.BeveledLabel=Ukrainian
cn.BeveledLabel=Chinese Simplified
tw.BeveledLabel=Chinese Traditional
#endif

[Dirs]
Name: {code:VSNET2010_PATH|}\ProjectTemplates\Cosmos; Flags: uninsalwaysuninstall

[Files]
Source: .\Build\Tools\*.exe; DestDir: {app}\Build\Tools; Flags: ignoreversion uninsremovereadonly
Source: .\Build\Tools\NAsm\*.exe; DestDir: {app}\Build\Tools\NAsm; Flags: ignoreversion uninsremovereadonly
Source: .\Build\Tools\Cygwin\*; DestDir: {app}\Build\Tools\cygwin; Flags: ignoreversion uninsremovereadonly overwritereadonly
Source: .\Build\VMWare\*; DestDir: {app}\Build\VMWare; Flags: ignoreversion uninsremovereadonly overwritereadonly recursesubdirs
Source: .\Build\VSIP\*; DestDir: {app}\Build\VSIP\; Flags: recursesubdirs createallsubdirs ignoreversion uninsremovereadonly
Source: .\Build\VSIP\Cosmos.targets; DestDir: {pf32}\MSBuild\Cosmos; Flags: ignoreversion uninsremovereadonly
Source: .\source\Cosmos\Cosmos.Kernel\bin\Debug\Cosmos.Kernel.*; DestDir: {app}\Kernel; Flags: ignoreversion uninsremovereadonly
Source: .\source\Cosmos\Cosmos.System\bin\Debug\Cosmos.Hardware.*; DestDir: {app}\Kernel; Flags: ignoreversion uninsremovereadonly
Source: .\source\Cosmos\Cosmos.System\bin\Debug\Cosmos.Sys.*; DestDir: {app}\Kernel; Flags: ignoreversion uninsremovereadonly
Source: .\source\Cosmos\Cosmos.System\bin\Debug\Cosmos.Sys.FileSystem.*; DestDir: {app}\Kernel; Flags: ignoreversion uninsremovereadonly
Source: .\source\Cosmos.ico; DestDir: {app}; Flags: ignoreversion uninsremovereadonly

Source: .\Build\ISO\isolinux.*; DestDir: {app}\Build\ISO
Source: .\Build\ISO\mboot.c32; DestDir: {app}\Build\ISO

; Templates
Source: ".\Build\VSIP\CosmosProject (C#).zip"; DestDir: {code:VSNET2010_PATH|}\ProjectTemplates\Cosmos; Flags: ignoreversion uninsremovereadonly; Check: csharp2010_Installed;
Source: ".\Build\VSIP\CosmosExpress.zip";      DestDir: {code:VSNET2010_PATH|}\ProjectTemplates\Cosmos; Flags: ignoreversion uninsremovereadonly;




[Registry]
Root: HKLM; Subkey: Software\Microsoft\.NETFramework\v2.0.50727\AssemblyFoldersEx\Cosmos; ValueType: none; Flags: uninsdeletekey
Root: HKLM; Subkey: Software\Microsoft\.NETFramework\v2.0.50727\AssemblyFoldersEx\Cosmos; ValueType: string; ValueName: ; ValueData: {app}\Kernel\; Flags: uninsdeletevalue

; AssemblyFolder
Root: HKLM; SubKey: Software\Cosmos; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Cosmos; ValueType: string; ValueName: ; ValueData: {app}; Flags: uninsdeletevalue

Root: HKLM64; SubKey: Software\Cosmos; ValueType: none; Flags: uninsdeletekey; Check: IsWin64
Root: HKLM64; SubKey: Software\Cosmos; ValueType: string; ValueName: ; ValueData: {app}; Flags: uninsdeletevalue; Check: IsWin64

; VSIP package
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\InstalledProducts\Cosmos Visual Studio Integration Package; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\InstalledProducts\Cosmos Visual Studio Integration Package; ValueType: string; ValueName: Package; ValueData: {{4cae44ed-88b9-4b7c-822b-b040f18fcee3}
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\InstalledProducts\Cosmos Visual Studio Integration Package; ValueType: dword; ValueName: UseInterface; ValueData: 1
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: ; ValueData: Cosmos.VS.Package.VSProject, Cosmos.VS.Package, Version=1.0.0.0, Culture=neutral, PublicKeyToken=f4d94ac959d59ec3
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: InprocServer32; ValueData: {sys}\MSCOREE.DLL
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: Class; ValueData: Cosmos.VS.Package.VSProject
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: CodeBase; ValueData: {app}\build\vsip\cosmos.vs.package.dll
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: dword; ValueName: ID; ValueData: $000003E9
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: MinEdition; ValueData: Standard
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: ProductVersion; ValueData: 1.0
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: ProductName; ValueData: Cosmos Visual Studio Integration Package
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Packages\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}; ValueType: string; ValueName: CompanyName; ValueData: Cosmos
; BuildPage configuration page
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{d33a2d29-c4fd-4e12-a510-4c01a14d63e1}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{d33a2d29-c4fd-4e12-a510-4c01a14d63e1}; ValueType: string; ValueName: ; ValueData: Cosmos.VS.Package.BuildPage
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{d33a2d29-c4fd-4e12-a510-4c01a14d63e1}; ValueType: string; ValueName: InprocServer32; ValueData: {sys}\MSCOREE.DLL
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{d33a2d29-c4fd-4e12-a510-4c01a14d63e1}; ValueType: string; ValueName: Class; ValueData: Cosmos.VS.Package.BuildPage
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{d33a2d29-c4fd-4e12-a510-4c01a14d63e1}; ValueType: string; ValueName: CodeBase; ValueData: {app}\build\vsip\cosmos.vs.package.dll
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{d33a2d29-c4fd-4e12-a510-4c01a14d63e1}; ValueType: string; ValueName: ThreadingModel; ValueData: Both
; DebugPage configuration page
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{39801176-289f-405f-9425-2931a2c03912}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{39801176-289f-405f-9425-2931a2c03912}; ValueType: string; ValueName: ; ValueData: Cosmos.VS.Package.DebugPage
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{39801176-289f-405f-9425-2931a2c03912}; ValueType: string; ValueName: InprocServer32; ValueData: {sys}\MSCOREE.DLL
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{39801176-289f-405f-9425-2931a2c03912}; ValueType: string; ValueName: Class; ValueData: Cosmos.VS.Package.DebugPage
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{39801176-289f-405f-9425-2931a2c03912}; ValueType: string; ValueName: CodeBase; ValueData: {app}\build\vsip\cosmos.vs.package.dll
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{39801176-289f-405f-9425-2931a2c03912}; ValueType: string; ValueName: ThreadingModel; ValueData: Both
; VMPage configuration page
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{3b72bb68-7363-45a2-9eba-55c8d5f36e36}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{3b72bb68-7363-45a2-9eba-55c8d5f36e36}; ValueType: string; ValueName: ; ValueData: Cosmos.VS.Package.VMPage
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{3b72bb68-7363-45a2-9eba-55c8d5f36e36}; ValueType: string; ValueName: InprocServer32; ValueData: {sys}\MSCOREE.DLL
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{3b72bb68-7363-45a2-9eba-55c8d5f36e36}; ValueType: string; ValueName: Class; ValueData: Cosmos.VS.Package.VMPage
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{3b72bb68-7363-45a2-9eba-55c8d5f36e36}; ValueType: string; ValueName: CodeBase; ValueData: {app}\build\vsip\cosmos.vs.package.dll
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{3b72bb68-7363-45a2-9eba-55c8d5f36e36}; ValueType: string; ValueName: ThreadingModel; ValueData: Both

; project type factory
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: ; ValueData: VSProjectFactory
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: DisplayName; ValueData: Cosmos
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: DisplayProjectFileExtensions; ValueData: "Cosmos Project Files (*.Cosmos);*.Cosmos"
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: Package; ValueData: {{4cae44ed-88b9-4b7c-822b-b040f18fcee3}
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: DefaultProjectExtension; ValueData: Cosmos
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: PossibleProjectExtensions; ValueData: Cosmos
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: ProjectTemplatesDir; ValueData: {app}\build\vsip\..\Templates\Projects\CosmosProject
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\Projects\{{471ec4bb-e47e-4229-a789-d1f5f83b52d4}; ValueType: string; ValueName: Language(VsTemplate); ValueData: CosmosProject
;Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\NewProjectTemplates\TemplateDirs\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}\/1; ValueType: string; ValueName: ; ValueData: Cosmos
;Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\NewProjectTemplates\TemplateDirs\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}\/1; ValueType: dword; ValueName: SortPriority; ValueData: $00000064
;Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\NewProjectTemplates\TemplateDirs\{{4cae44ed-88b9-4b7c-822b-b040f18fcee3}\/1; ValueType: string; ValueName: TemplatesDir; ValueData: {app}\build\Templates\Projects\CosmosProject

; Debug engine
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}; ValueType: string; ValueName: ; ValueData: guidCosmosDebugEngine
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}; ValueType: string; ValueName: CLSID; ValueData: {{8355452D-6D2F-41B0-89B8-BB2AA2529E94}
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}; ValueType: string; ValueName: ProgramProvider; ValueData: {{B4DE9307-C062-45F1-B1AF-9A5FB25402D5}
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}; ValueType: string; ValueName: Name; ValueData: Cosmos Debug Engine
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}\AutoSelectIncompatibleList; ValueType: string; ValueName: guidCOMPlusNativeEng; ValueData: {{92EF0900-2251-11D2-B72E-0000F87572EF}
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}\AutoSelectIncompatibleList; ValueType: string; ValueName: guidCOMPlusOnlyEng; ValueData: {{449EC4CC-30D2-4032-9256-EE18EB41B62B}
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}\AutoSelectIncompatibleList; ValueType: string; ValueName: guidNativeOnlyEng; ValueData: {{3B476D35-A401-11D2-AAD4-00C04F990171}
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\AD7Metrics\Engine\{{FA1DA3A6-66FF-4c65-B077-E65F7164EF83}\AutoSelectIncompatibleList; ValueType: string; ValueName: guidScriptEng; ValueData: {{F200A7E7-DEA5-11D0-B854-00A0244A1DE2}

; debug engine
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{8355452D-6D2F-41B0-89B8-BB2AA2529E94}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{8355452D-6D2F-41B0-89B8-BB2AA2529E94}; ValueType: string; ValueName: Assembly; ValueData: Cosmos.Debug.VSDebugEngine
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{8355452D-6D2F-41B0-89B8-BB2AA2529E94}; ValueType: string; ValueName: Class; ValueData: Cosmos.Debug.VSDebugEngine.AD7Engine
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{8355452D-6D2F-41B0-89B8-BB2AA2529E94}; ValueType: string; ValueName: InprocServer32; ValueData: {sys}\mscoree.dll
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{8355452D-6D2F-41B0-89B8-BB2AA2529E94}; ValueType: string; ValueName: CodeBase; ValueData: {app}\build\vsip\Cosmos.Debug.VSDebugEngine.dll

; program provider
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{B4DE9307-C062-45F1-B1AF-9A5FB25402D5}; ValueType: none; Flags: uninsdeletekey
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{B4DE9307-C062-45F1-B1AF-9A5FB25402D5}; ValueType: string; ValueName: Assembly; ValueData: Cosmos.Debug.VSDebugEngine
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{B4DE9307-C062-45F1-B1AF-9A5FB25402D5}; ValueType: string; ValueName: Class; ValueData: Cosmos.Debug.VSDebugEngine.AD7ProgramProvider
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{B4DE9307-C062-45F1-B1AF-9A5FB25402D5}; ValueType: string; ValueName: InprocServer32; ValueData: {sys}\mscoree.dll
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\CLSID\{{B4DE9307-C062-45F1-B1AF-9A5FB25402D5}; ValueType: string; ValueName: CodeBase; ValueData: {app}\build\vsip\Cosmos.Debug.VSDebugEngine.dll

; mark our msbuild file as safe
Root: HKLM; SubKey: Software\Microsoft\VisualStudio\10.0\MSBuild\SafeImports; ValueType: string; ValueName: Cosmos1; ValueData: {pf32}\MSBuild\Cosmos\Cosmos.targets; Flags: uninsdeletevalue
Root: HKCU; SubKey: Software\Microsoft\VisualStudio\10.0Exp\Configuration\MSBuild\SafeImports; ValueType: string; ValueName: Cosmos1; ValueData: {pf32}\MSBuild\Cosmos\Cosmos.targets; Flags: uninsdeletevalue

; add the .cosmos file association:
Root: HKCR; SubKey: .Cosmos; ValueType: string; ValueName: ; ValueData: Cosmos.ProjectFile; Flags: uninsdeletevalue
Root: HKCR; SubKey: Cosmos.ProjectFile; ValueType: string; ValueName: ; ValueData: Cosmos Project File; Flags: uninsdeletekey
Root: HKCR; SubKey: Cosmos.ProjectFile\DefaultIcon; ValueType: string; ValueName: ; ValueData: {app}\Cosmos.ico
Root: HKCR; SubKey: Cosmos.ProjectFile\shell\open\command; ValueType: string; ValueName: ; ValueData: """{pf32}\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe"" ""%1"""


[Run]
Filename: {code:VSNET2010_PATH|}\devenv.exe; Parameters: /setup; Flags: waituntilterminated

[UninstallRun]
Filename: {code:VSNET2010_PATH|}\devenv.exe; Parameters: /setup; Flags: waituntilterminated