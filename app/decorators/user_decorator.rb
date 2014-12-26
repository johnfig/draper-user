class UserDecorator < Draper::Decorator
  include ActionView::Helpers::NumberHelper

  def full_name
    [object.first_name, object.last_name].join(' ')
  end

  def formatted_birthday
    object.birthday.strftime('%F')
  end

  def salary_string
    number_to_currency(object.salary)
  end
end
