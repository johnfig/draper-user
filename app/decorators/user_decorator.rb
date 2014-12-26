class UserDecorator < Draper::Decorator
  def full_name
    [object.first_name, object.last_name].join(' ')
  end

  def formatted_birthday
    object.birthday.strftime('%F')
  end
end
