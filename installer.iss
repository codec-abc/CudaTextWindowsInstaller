[Setup]
OutputBaseFilename=CudaTextInstaller
SetupIconFile=cudatext.ico
AppName=CudaText
AppVersion=1.167.1.5.0
WizardStyle=modern
DisableDirPage=yes
UsePreviousAppDir=no
DefaultDirName={localappdata}\Programs\CudaText
DefaultGroupName=CudaText
UninstallDisplayIcon={app}\CudaText.exe
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Types]
Name: "full"; Description: "Full installation";
Name: "compact"; Description: "Compact installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Files]
Source: "content\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs; Permissions: everyone-full; Components: editor

[Dirs]
Name: "{app}"; Permissions: everyone-full

[Components]
Name: "editor"; Description: "CudaText editor"; Flags: fixed; Types: full compact custom
Name: "shellIntegration"; Description: "Shell Integration"; Types: full
Name: "addExeToPath"; Description: "Add exe to path environment variable"; Types: full

[Icons]
Name: "{group}\CudaText"; Filename: "{app}\CudaText.exe"

[Registry]
Root: HKCU; Subkey: "Software\Classes\Directory\shell\OpenWithCudaText\"; ValueType: string; ValueData: "Open w&ith CudaText"; Flags: uninsdeletekey;  Components: shellIntegration
Root: HKCU; Subkey: "Software\Classes\Directory\shell\OpenWithCudaText\"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\cudatext.exe"""; Flags: uninsdeletekey;  Components: shellIntegration
Root: HKCU; Subkey: "Software\Classes\Directory\shell\OpenWithCudaText\command"; ValueType: string; ValueData: """{app}\cudatext.exe"" ""%V"""; Flags: uninsdeletekey;  Components: shellIntegration

Root: HKCU; Subkey: "Software\Classes\*\shell\OpenWithCudaText\"; ValueType: string; ValueData: "Open w&ith CudaText"; Flags: uninsdeletekey;  Components: shellIntegration
Root: HKCU; Subkey: "Software\Classes\*\shell\OpenWithCudaText\"; ValueType: string; ValueName: "Icon"; ValueData: """{app}\cudatext.exe"""; Flags: uninsdeletekey;  Components: shellIntegration
Root: HKCU; Subkey: "Software\Classes\*\shell\OpenWithCudaText\command"; ValueType: string; ValueData: """{app}\cudatext.exe"" ""%V"""; Flags: uninsdeletekey;  Components: shellIntegration

Root: HKCU; Subkey: "Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}"; Components: addExeToPath
