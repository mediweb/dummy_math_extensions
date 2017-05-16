module Math
  def self.finite_log(x)
    if x == 0
      # Prevent the function from returning -Infinity
      raise ArgumentError, 'would result in -Infinity'
    end
    Math.log(x)
  end

  def self.finite_log2(x)
    if x == 0
      # Prevent the function from returning -Infinity
      raise ArgumentError, 'would result in -Infinity'
    end
    Math.log2(x)
  end

  def self.finite_log10(x)
    if x == 0
      # Prevent the function from returning -Infinity
      raise ArgumentError, 'would result in -Infinity'
    end
    Math.log10(x)
  end
end
