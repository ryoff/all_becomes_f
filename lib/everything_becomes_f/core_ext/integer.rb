class Integer
  def everything_became_f?
    to_s(16).squeeze == 'f'
  end

  def everything_becomes_f
    return self if everything_became_f?

    ('f' * to_s(16).length).hex
  end
end

