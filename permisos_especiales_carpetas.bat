icacls "F:\CEN" /inheritance:r /grant:r Administradores:(OI)(CI)F /grant:r CEN:(OI)(CI)RX /t
icacls "F:\CEN" /inheritance:d /grant:r Administradores:(OI)(CI)F /grant:r CEN:(OI)(CI)RX /t
icacls "F:\CEN" /remove:g "*"

icacls "F:\CEN\Almacen" /grant:r CEN_Almacen:(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
icacls "F:\CEN\Almacen" /remove:g CEN

icacls "F:\CEN\Direccion" /grant:r CEN_Direccion:(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
icacls "F:\CEN\Direccion" /remove:g CEN

icacls "F:\CEN\Financiero" /grant:r CEN_Financiero:(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
icacls "F:\CEN\Financiero" /remove:g CEN

icacls "F:\CEN\Nutricion" /grant:r CEN_Nutricion:(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
icacls "F:\CEN\Nutricion" /remove:g CEN

icacls "F:\CEN\Operaciones" /grant:r CEN_Operaciones:(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
icacls "F:\CEN\Operaciones" /remove:g CEN

icacls "F:\CEN\RRHH" /grant:r CEN_RRHH:(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
icacls "F:\CEN\RRHH" /remove:g CEN

icacls "F:\CEN\_Usuarios" /grant:r "CREATOR OWNER":(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
icacls "F:\CEN\_Usuarios" /grant:r CEN:(OI)(CI)(RX,AD,WA,DC,RA,X,WD,WEA,WA) /t
