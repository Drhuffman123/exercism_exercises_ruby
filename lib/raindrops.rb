
class Raindrops
  def self.err_when_div_evenly_by(num, quotient, drop)
    if (1.0*num/quotient).round == (1.0*num/quotient)
      drop
    else
      ""
    end
  end

  def self.convert(num)
    num = num.to_i
    err_str = err_when_div_evenly_by(num, 3, "Pling") +
      err_when_div_evenly_by(num, 5, "Plang") + 
      err_when_div_evenly_by(num, 7, "Plong")
    if err_str != ""
      err_str
    else
      num.to_s
    end
  end
end
