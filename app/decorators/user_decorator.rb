class UserDecorator < Draper::Decorator
  def full_name
    [first_name, last_name].join('')
  end
end
