#Definimos las variables que utilizaremos.
$contraseña = ConvertTo-SecureString "P@ssWord" -AsPlainText -Force
$rutaPerfilMovil = "\\SYSTEMATO\CEN\_Usuarios\%username%"

Write-Host "Presiona una tecla para crear las unidades organizativas de medicalia.loc"
$null = Read-Host

New-ADOrganizationalUnit -Name "CEN" -Path "DC=medicalia,DC=loc"
New-ADOrganizationalUnit -Name "Grupos" -Path "DC=medicalia,DC=loc"
New-ADOrganizationalUnit -Name "Almacen" -Path "OU=CEN,DC=medicalia,DC=loc"
New-ADOrganizationalUnit -Name "Financiero" -Path "OU=CEN,DC=medicalia,DC=loc"
New-ADOrganizationalUnit -Name "Nutricion" -Path "OU=CEN,DC=medicalia,DC=loc"
New-ADOrganizationalUnit -Name "Operaciones" -Path "OU=CEN,DC=medicalia,DC=loc"
New-ADOrganizationalUnit -Name "RRHH" -Path "OU=CEN,DC=medicalia,DC=loc"
New-ADOrganizationalUnit -Name "Direccion" -Path "OU=CEN,DC=medicalia,DC=loc"

Write-Host "Presiona una tecla para crear los grupos de medicalia.loc"
$null = Read-Host

New-ADGroup -Name "CEN" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"
New-ADGroup -Name "CEN_JJDD" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"
New-ADGroup -Name "CEN_Almacen" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"
New-ADGroup -Name "CEN_Financiero" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"
New-ADGroup -Name "CEN_Nutricion" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"
New-ADGroup -Name "CEN_Operaciones" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"
New-ADGroup -Name "CEN_RRHH" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"
New-ADGroup -Name "CEN_Direccion" -GroupScope Global -Path "OU=Grupos,DC=medicalia,DC=loc"

Write-Host "Presiona una tecla para continuar creando los usuarios de Direccion"
$null = Read-Host
New-ADUser -Name "María Ballester" -GivenName "María" -Surname "Ballester" -SamAccountName "mballester" -UserPrincipalName "mballester@medicalia.loc" -Path "OU=Direccion,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true

Write-Host "Presiona una tecla para continuar creando los usuarios de Almacen"
$null = Read-Host
New-ADUser -Name "Jorge Pérez" -GivenName "Jorge" -Surname "Pérez" -SamAccountName "jperez" -UserPrincipalName "jperez@medicalia.loc" -Path "OU=Almacen,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Sandra Moreno" -GivenName "Sandra" -Surname "Moreno" -SamAccountName "smoreno" -UserPrincipalName "smoreno@medicalia.loc" -Path "OU=Almacen,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Rodrigo Zabalza" -GivenName "Rodrigo" -Surname "Zabalza" -SamAccountName "rzabalza" -UserPrincipalName "rzabalza@medicalia.loc" -Path "OU=Almacen,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Luis Reguera" -GivenName "Luis" -Surname "Reguera" -SamAccountName "lreguera" -UserPrincipalName "lreguera@medicalia.loc" -Path "OU=Almacen,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Alfonso Montes" -GivenName "Alfonso" -Surname "Montes" -SamAccountName "amontes" -UserPrincipalName "amontes@medicalia.loc" -Path "OU=Almacen,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Tomás Hervor" -GivenName "Tomás" -Surname "Hervor" -SamAccountName "thervor" -UserPrincipalName "thervor@medicalia.loc" -Path "OU=Almacen,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true

Write-Host "Presiona una tecla para continuar creando los usuarios de RRHH"
$null = Read-Host
New-ADUser -Name "Josefa Hernández" -GivenName "Josefa" -Surname "Hernández" -SamAccountName "jhernandez" -UserPrincipalName "jhernandez@medicalia.loc" -Path "OU=RRHH,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Luisa Prieto" -GivenName "Luisa" -Surname "Prieto" -SamAccountName "lprieto" -UserPrincipalName "lprieto@medicalia.loc" -Path "OU=RRHH,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Esther Matia" -GivenName "Esther" -Surname "Matia" -SamAccountName "ematia" -UserPrincipalName "ematia@medicalia.loc" -Path "OU=RRHH,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true

Write-Host "Presiona una tecla para continuar creando los usuarios de Nutricion"
$null = Read-Host
New-ADUser -Name "Xabier Olabarri" -GivenName "Xabier" -Surname "Olabarri" -SamAccountName "xolabarri" -UserPrincipalName "xolabarri@medicalia.loc" -Path "OU=Nutricion,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Sonia Soto" -GivenName "Sonia" -Surname "Soto" -SamAccountName "ssoto" -UserPrincipalName "ssoto@medicalia.loc" -Path "OU=Nutricion,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true

Write-Host "Presiona una tecla para continuar creando los usuarios de Financiero"
$null = Read-Host
New-ADUser -Name "Carla Nistal" -GivenName "Carla" -Surname "Nistal" -SamAccountName "cnistal" -UserPrincipalName "cnistal@medicalia.loc" -Path "OU=Financiero,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Toni Pruna" -GivenName "Toni" -Surname "Pruna" -SamAccountName "tpruna" -UserPrincipalName "tpruna@medicalia.loc" -Path "OU=Financiero,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Aleix Calvo" -GivenName "Aleix" -Surname "Calvo" -SamAccountName "acalvo" -UserPrincipalName "acalvo@medicalia.loc" -Path "OU=Financiero,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true

Write-Host "Presiona una tecla para continuar creando los usuarios de Operaciones"
$null = Read-Host
New-ADUser -Name "Silvia Sanchez" -GivenName "Silvia" -Surname "Sanchez" -SamAccountName "ssanchez" -UserPrincipalName "ssanchez@medicalia.loc" -Path "OU=Operaciones,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Thais Sordo" -GivenName "Thais" -Surname "Sordo" -SamAccountName "tsordo" -UserPrincipalName "tsordo@medicalia.loc" -Path "OU=Operaciones,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Cristian León" -GivenName "Cristian" -Surname "León" -SamAccountName "cleon" -UserPrincipalName "cleon@medicalia.loc" -Path "OU=Operaciones,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Pablo Gámez" -GivenName "Pablo" -Surname "Gámez" -SamAccountName "pgamez" -UserPrincipalName "pgamez@medicalia.loc" -Path "OU=Operaciones,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true
New-ADUser -Name "Raquel Isla" -GivenName "Raquel" -Surname "Isla" -SamAccountName "risla" -UserPrincipalName "risla@medicalia.loc" -Path "OU=Operaciones,OU=CEN,DC=medicalia,DC=loc" -AccountPassword $contraseña -ProfilePath $rutaPerfilMovil -Enabled $true

Write-Host "Presiona una tecla para continuar asignando los usuarios a un grupo de trabajo"
$null = Read-Host
Add-ADGroupMember -Identity "CEN" -Members "CEN_JJDD", "CEN_Almacen", "CEN_Financiero", "CEN_Nutricion", "CEN_Operaciones", "CEN_RRHH", "CEN_Direccion" 
Add-ADGroupMember -Identity "CEN_JJDD" -Members "mballester", "jperez", "jhernandez", "xolabarri", "cnistal", "ssanchez" 
Add-ADGroupMember -Identity "CEN_Almacen" -Members "jperez", "smoreno", "rzabalza", "lreguera", "amontes", "thervor"
Add-ADGroupMember -Identity "CEN_RRHH" -Members "jhernandez", "lprieto", "ematia"
Add-ADGroupMember -Identity "CEN_Nutricion" -Members "xolabarri", "ssoto"
Add-ADGroupMember -Identity "CEN_Financiero" -Members "cnistal", "tpruna", "acalvo"
Add-ADGroupMember -Identity "CEN_Operaciones" -Members "ssanchez", "tsordo", "cleon", "pgamez", "risla"
Add-ADGroupMember -Identity "CEN_Direccion" -Members "mballester"
Add-ADGroupMember -Identity "CEN_JJDD" -Members "CEN_Direccion"
Add-ADGroupMember -Identity "CEN_Almacen" -Members "CEN_Direccion"
Add-ADGroupMember -Identity "CEN_Financiero" -Members "CEN_Direccion"
Add-ADGroupMember -Identity "CEN_Nutricion" -Members "CEN_Direccion"
Add-ADGroupMember -Identity "CEN_Operaciones" -Members "CEN_Direccion"
Add-ADGroupMember -Identity "CEN_RRHH" -Members "CEN_Direccion"


Write-Host "Presiona una tecla para crear la estructura de carpetas"
$null = Read-Host
New-Item -ItemType Directory -Path "F:\CEN" | Out-Null
$carpetas = "_Usuarios", "Almacen", "Direccion", "Financiero", "Nutricion", "Operaciones", "RRHH"
foreach ($carpeta in $carpetas) {
    New-Item -ItemType Directory -Path "F:\CEN\$carpeta" | Out-Null
    Write-Host "Carpeta $carpeta creada correctamente."
}

Start-Process -FilePath "E:\permisos_especiales_carpetas.bat"



