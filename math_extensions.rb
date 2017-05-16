module Math
  def self.method_missing(name, *args, &block)
    if name.to_s =~ /^finite_log(\d+)$/
      self.finite_logn(args[0], $1.to_i)
    else
      super
    end
  end

  def self.finite_log(x)
    self.finite_logn(x, Math::E)
  end

  private
  def self.finite_logn(x, n)
    raise ArgumentError, 'would result in -Infinity' if x == 0
    raise ArgumentError, 'would result in Infinity' if x == Float::INFINITY
    Math.log(x, n)
  end
end
