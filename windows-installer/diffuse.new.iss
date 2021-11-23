
; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Diffuse Merge Tool"
#define MyAppGroupName "Diffuse"
#define MyAppVersion "0.7.3"
#define MyAppPublisher "Diffuse Team"
#define MyAppURL "https://github.com/MightyCreak/diffuse/"
#define MyAppExeName "diffuse.exe"

#define SrcDir "build\exe.win-amd64-3.4\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{82CF8E8E-7CA3-4D21-B5C7-91A35696424F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={pf}\{#MyAppGroupName}
DefaultGroupName={#MyAppGroupName}
;DisableProgramGroupPage=yes
OutputBaseFilename=setup-diffuse-{#MyAppVersion}-x64
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl,.\en.isl"
Name: "cs"; MessagesFile: "compiler:Languages\Czech.isl,.\cs.isl"
Name: "de"; MessagesFile: "compiler:Languages\German.isl,.\de.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl,.\es.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl,.\it.isl"
Name: "ja"; MessagesFile: "compiler:Languages\Japanese.isl,.\ja.isl"
Name: "ko"; MessagesFile: "compiler:Languages\Korean.isl,.\ko.isl"
Name: "pl"; MessagesFile: "compiler:Languages\Polish.isl,.\pl.isl"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl,.\ru.isl"
Name: "zh_CN"; MessagesFile: "compiler:Languages\ChineseSimplified.isl,.\zh_CN.isl"
Name: "zh_TW"; MessagesFile: "compiler:Languages\ChineseTraditional.isl,.\zh_TW.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SrcDir}diffuse.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SrcDir}*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

