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
