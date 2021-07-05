# app/models/task.rb

class Task < ApplicationRecord

  def laundry?
     if title.downcase.include?('laundry') || description.downcase.include?('laundry')
      true
    else
      false
    end
  end

end
