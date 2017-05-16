# Copyright (c) 2017 MediWeb, Inc.
#
# This is dummy code used in trainings. It is mostly pointless, and if you are
# reading this and are not currently in a training session, you took a wrong
# turn somewhere.
#
# License: WTFNMFPL-1.0

module Math
  def self.method_missing(name, *args, &block)
    if name.to_s =~ /^finite_log(\d*)$/
      self.finite_logn(args[0], $1)
    else
      super
    end
  end

  private
  def self.finite_logn(x, n)
    n = n == '' ? Math::E : n.to_i
    raise ArgumentError, 'would result in -Infinity' if x == 0
    raise ArgumentError, 'would result in Infinity' if x == Float::INFINITY
    Math.log(x, n)
  end
end
