Constant.all.each do |c|
  if c.datatype == 'Integer'
    Object.const_set(c.name.upcase, c.thevalue.to_i)
  else
    Object.const_set(c.name.upcase, c.thevalue)
  end
end