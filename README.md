# puppet-openjdk

Manage java binary packages.


## Usage

Specify which versions to install:

```yaml
openjdk::adopt::versions:
  - 8-openj9xl
  - 14-openj9xl
```

```puppet
include openjdk::adopt
```

## Multiple versions

On Debian systems:
```
$ update-java-alternatives -l
adoptopenjdk-14-openj9xl-amd64 1141       /usr/lib/jvm/adoptopenjdk-14-openj9xl-amd64
adoptopenjdk-8-openj9xl-amd64  1081       /usr/lib/jvm/adoptopenjdk-8-openj9xl-amd64

```
using the official Puppetlabs module, one can override priorites:

```yaml
java::java_alternative: adoptopenjdk-8-openj9xl-amd64
java::java_alternative_path: /usr/lib/jvm/adoptopenjdk-8-openj9xl-amd64
```
and:
```
include java
```

## Limitations

Currently only AdoptOpenJDK is supported.

