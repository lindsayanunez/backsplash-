class HomeController < ApplicationController
  def Index
    @current_time = Time.now.stamp_like("Feb 1st 09:00 pm")
    @greet_message = case Time.now.hour
    when 5..11
      "Good Morning, Lindsay!"
    when 12..15
      "Good Afternoon, Lindsay!"
    when 16..19 
      ["Good Evening, Lindsay", "Aye Bay Bay", "Have a lovely evening"].sample 
    when 20..23, 0..4 
      "Good Night, Lindsay! <i class='fa fa-moon-o'></i>".html_safe
    end 

  end
end
