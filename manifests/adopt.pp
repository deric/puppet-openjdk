# @summary A short summary of the purpose of this defined type.
#
# A description of what this defined type does
#
# @example
#   openjdk::adopt { 'namevar': }
define openjdk::adopt (
) {

  include openjdk::repo::adopt
}
