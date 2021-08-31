#define MyAppName "SheepIt"
#define MyAppNameLower "sheepit"
#define MyAppVersion "6.21175.0"
#define MyAppPublisher "SheepIt Renderfarm"
#define MyAppURL "https://www.sheepit-renderfarm.com/"

[Setup]
AppId={{46E80699-D379-4C3B-BDD7-E9091D4EBDF4}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=setup-{#MyAppNameLower}-{#MyAppVersion}
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "run-script\run.exe"; DestDir: "{app}"
Source: "sheepit\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\run.exe"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\run.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\run.exe"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "{#MyAppName}"; ValueData: "{app}\run.exe"; Flags: uninsdeletevalue