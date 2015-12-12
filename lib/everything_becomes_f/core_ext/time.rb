class Time
  def everything_became_f?
    to_i.everything_became_f?
  end

  def everything_becomes_f
    return self if everything_became_f?

    Time.at(to_i.everything_becomes_f)
  end
end
