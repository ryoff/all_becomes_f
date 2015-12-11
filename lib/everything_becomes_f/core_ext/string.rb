class String
  def everything_became_f?
    downcase.squeeze == 'f'
  end
end
