module Math
  def self.finite_log(x)
    self.finite_logn(x, Math::E)
  end

  def self.finite_log2(x)
    self.finite_logn(x, 2)
  end

  def self.finite_log10(x)
    self.finite_logn(x, 10)
  end

  def self.finite_logn(x, n)
    raise ArgumentError, 'would result in -Infinity' if x == 0
    raise ArgumentError, 'would result in Infinity' if x == Float::INFINITY
    Math.log(x, n)
  end
end
