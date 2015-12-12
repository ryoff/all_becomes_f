class String
  def everything_became_f?
    downcase.squeeze == 'f'
  end

  def everything_becomes_f!
    self.replace('f' * length)
  end
end
