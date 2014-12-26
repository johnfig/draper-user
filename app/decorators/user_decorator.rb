class UserDecorator < Draper::Decorator
  def full_name
    [object.first_name, object.last_name].join(' ')
  end

  def formatted_birthday
    object.birthday.strftime('%F')
  end

  def salary_string
    array = object.salary.to_s.split('').reverse
    new_array = []
    array.each_with_index do |letter, index|
      divider = index + 1
      if divider % 3 == 0
        if array.last == letter
          new_array << letter
        else
          new_array << ",#{letter}"
        end
      else
        new_array << letter
      end
    end
    new_array.push('$')
    new_array.reverse.join
  end
end
