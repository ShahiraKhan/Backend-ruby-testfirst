# Timer class 
class Timer
  attr_accessor :seconds

  # intialize Timer class with zero seconds
  def initialize
    @seconds = 0
  end
  
  def time_string
    # With the given seconds, we get its remainder in timer_seconds after formatting it
    timer_seconds = "%02d"% (seconds % 60) 
    #  With the given seconds, we divide it by 60 then we store its quotient in timer_minutes 
    timer_minutes = seconds / 60
    # we format the timer_minutes
    timer_minutes = "%02d"% (timer_minutes % 60)
    # With the given seconds and we divide it by 3600 then we store its quotient in timer_hours formatting it
    timer_hours = "%02d"% (seconds / 3600)
    # seconds are printed in the expected format, 
    # Eg: 1) For 0 seconds, it prints 00:00:00 
    #     2) For 7332 seconds, it prints 02:02:12
    if seconds == 0
      "00:00:00"
    elsif seconds > 0 && seconds < 60
      "00:00:#{timer_seconds}"
    elsif seconds > 60 && seconds < 3600
      "00:#{timer_minutes}:#{timer_seconds}"
    elsif seconds >= 3600 
      "#{timer_hours}:#{timer_minutes}:#{timer_seconds}"
    end  
  end
end
# new instance of Timer class is created
timer = Timer.new
# seconds are passed to the timer object
timer.seconds = 4000
"seconds: #{timer.seconds}"
# time_string method is called
timer.time_string
