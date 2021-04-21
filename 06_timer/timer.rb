class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  
  def time_string
    timer_seconds = "%.2i"% (seconds % 60) # for display
    puts timer_seconds
    timer_minutes = seconds / 60
    timer_hours = seconds / 3600
    if timer_minutes > 60 
      timer_minutes = "%.2i" % (timer_minutes % 60)
      timer_hours = "%.2i" %( timer_minutes / 60)
    else
      timer_minutes = "%.2i" % ( timer_minutes)
    end  
    
    if timer_seconds.to_i == 0
       puts "00:00:00"
    elsif timer_seconds.to_i > 0
        puts "00:00:#{timer_seconds}"
    elsif timer_seconds >60
      puts "00:#{timer_minutes}:#{timer_seconds}"
    end  
    
 end
  end
  timer=Timer.new
  timer.seconds = 66
puts "seconds: #{timer.seconds}"
  puts timer.time_string