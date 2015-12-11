class Integer
  def everything_became_f?
    to_s(16).squeeze == 'f'
  end
end

