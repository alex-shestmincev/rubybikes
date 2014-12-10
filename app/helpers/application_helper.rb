module ApplicationHelper

  def bicycles_options
    bicycles_array = Bicycle.all.map { |bicycle| [bicycle.title, bicycle.id] }
  end


end
