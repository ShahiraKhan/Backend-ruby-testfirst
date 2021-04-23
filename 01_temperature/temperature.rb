# this method takes in farenheit degrees to convert the temperature into celsius degrees
  def ftoc(fahrenheit)
    celsius = (5.0 / 9.0) * (fahrenheit.to_i - 32)
    return celsius.round() 
  end
  
# this method takes in the celsius degrees to convert the temperature into farenheit degrees
  def ctof(celsius)
    fahrenheit = (9.0 / 5.0 * celsius.to_i) + 32
    return fahrenheit.round(2)
  end  
   