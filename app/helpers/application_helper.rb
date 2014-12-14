module ApplicationHelper

  def bicycles_options
    Bicycle.all.map { |bicycle| [bicycle.title, bicycle.id] }
  end

  def users_options
    User.all.map { |user| [user.email, user.id] }
  end

end
