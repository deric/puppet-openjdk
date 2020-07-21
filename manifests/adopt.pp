# @summary A short summary of the purpose of this defined type.
#
# A description of what this defined type does
#
# @example
#   openjdk::adopt { 'namevar': }
class openjdk::adopt (
  Array[String] $versions = ['8-openj9xl'],
  String $ensure = 'present'
) {

  include openjdk::repo::adopt

  if(!empty($versions)){
    $_packages = []

    $versions.each |$version| {
      ensure_packages("adoptopenjdk-${version}", {
        ensure => $ensure,
        require => Class['openjdk::repo::adopt'],
      } )
    }
  }
}
