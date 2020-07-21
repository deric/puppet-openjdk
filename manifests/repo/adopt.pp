# @summary Manage AdoptOpenJDK repo
#
# @api private
class openjdk::repo::adopt {

  case $facts['os']['family'] {
    'RedHat', 'Linux': {
      # TODO
    }

    'Debian': {
      include ::apt

      apt::source { 'adoptopenjdk':
        location => 'https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/',
        release  => $::lsbdistcodename,
        repos    => 'main',
        key      => {
          id     => '8ED17AF5D7E675EB3EE3BCE98AC3B29174885C03',
          source => 'https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public',
        },
        include  => {
          src => false,
        },
        notify   => Class['apt::update'],
      }
    }

    default: {
      fail("Unsupported managed repository for osfamily: ${::osfamily}, operatingsystem: ${::operatingsystem}, module ${module_name} currently only supports managing repos for osfamily RedHat and Debian")
    }
  }

}
