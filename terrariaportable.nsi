; Name of installer file
OutFile "Terraria.exe"

; Requests License page here
page license

LicenseData "license.rtf"
LicenseForceSelection checkbox "I understand what is described in the license above"

page directory
InstallDir "$Desktop\TerrariaPortable" 
OutPath=$InstallDir

page instfiles

; Begins installation
section install

File "TerrariaPortable.exe" 
File "App" /r
File "Other" /r
CreateDirectory $OutPath/Data

sectionEnd

CompletedText "TerrariaPortable has been succesfully installed. Once finished run the GOG installer and install to $OutPath/Terraria."
