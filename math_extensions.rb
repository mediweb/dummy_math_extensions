module Math
  def self.finite_log10(x)
    if x == 0
      # Prevent the function from returning -Infinity
      raise ArgumentError, 'would result in -Infinity'
    end
    Math.log10(x)
  end
end
