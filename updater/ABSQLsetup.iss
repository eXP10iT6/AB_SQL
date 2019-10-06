; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AB_SQL"
#define MyAppVersion "2.0"
#define MyAppExeName "{app}\BALANS_P.ade"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C7291515-3D2B-49B1-9730-059F2BFF5E1C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
DefaultDirName=c:\AB_SQL
DisableProgramGroupPage=yes
OutputBaseFilename=ABSQLSetup
Compression=lzma
SolidCompression=yes
DisableDirPage=yes
DisableWelcomePage=no


[Files]
Source: "C:\AB_SQL\*"; DestDir: "c:\AB_SQL\"; Flags: ignoreversion recursesubdirs createallsubdirs ; Excludes: "C:\AB_SQL\updater\ABSQLsetup.iss"
Source: "C:\AB_SQL\.git\*"; DestDir: "c:\AB_SQL\.git\"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "C:\1cv8distr\common\*"; DestDir: "{app}\common"; Flags: ignoreversion recursesubdirs createallsubdirs 
;Source: "C:\1cv8distr\1C.ico"; DestDir: "{commondesktop}\"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commondesktop}\�+�"; Filename: "C:\AB_SQL\BALANS_P.ade"; WorkingDir: "{app}"; Parameters: ""
Name: "{commondesktop}\�+�_����������"; Filename: "C:\AB_SQL\updater\AB_Upd.cmd"; WorkingDir: "{app}"; Parameters: ""

;[Tasks]
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; 


[Run]
Filename: "C:\AB_SQL\updater\AB_Upd.cmd"; Description: "��������� �+�"; Parameters: ""; Flags: nowait postinstall skipifsilent

