# puppet-openjdk

Manage java binary packages.


## Usage

Specify which versions to install:

```yaml
openjdk::adopt::versions:
  - 8-openj9xl
  - 14-openj9xl
```

```
include openjdk::adopt
```


## Limitations

Currently only AdoptOpenJDK is supported.

