# @summary
#  For operating system related variable and others
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {
  $install_ensure = 'present'
case $::osfamily {
     'RedHat': {
	$install_name = 'httpd'
     }
     'Debian': {
 	$install_name = 'apache2'
     }	
 }
}
