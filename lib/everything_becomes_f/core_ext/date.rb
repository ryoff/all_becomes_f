class Date
  def everything_became_f?
    to_i.to_s(16).squeeze == 'f'
  end
end
