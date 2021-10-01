module ApplicationHelper
  def calculate_percentage(value_now, total_value)
    puts "inital valye #{value_now}"
    puts "final valye #{total_value}"
    value = (value_now.to_f / total_value) * 100

    value
  end

  def area_berlin_list
  end
end
