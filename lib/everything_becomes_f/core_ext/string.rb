class String
  def everything_became_f?
    downcase.squeeze == 'f'
  end

  def everything_becomes_f
    'f' * length
  end

  def everything_becomes_f!
    self.replace(everything_becomes_f)
  end
end
