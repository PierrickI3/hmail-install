# == class: mssql::params
#
# This class manages MSSQL paraameters
#
# == Paramaters
#
# $instancename
# $features
# $agtsvcaccount
# $agtsvcpassword
# $sqlsvcaccount
# $sqlsvcpassword
# $instancedir
# $ascollation
# $sqlcollation
# $admin
#
class mssql::params {
  $instancename   = 'MSSQLSERVER'
  $features       = 'SQL,IS'
  $agtsvcaccount  = 'SQLAGTSVC'
  $agtsvcpassword = 'D0gf00d'
  $sqlsvcaccount  = 'SQLSVC'
  $sqlsvcpassword = 'D0gf00d'
  $instancedir    = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\Binn\sqlservr.exe'
  $ascollation    = 'Latin1_General_CI_AS'
  $sqlcollation   = 'SQL_Latin1_General_CP1_CI_AS'
  $admin          = 'Administrator'
}