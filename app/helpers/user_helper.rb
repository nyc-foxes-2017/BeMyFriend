module UserHelper
  def time(timestamp)
  timestamp.strftime("%I:%M%p")
  end
end
