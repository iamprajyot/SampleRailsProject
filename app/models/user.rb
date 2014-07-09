class User < ActiveRecord::Base
  def name
    name = firstname
    if lastname.present?
      name = name + ' ' + lastname
    end
    return name
  end

  def self.search(search)
    if search
      where('firstname LIKE ?', "%#{search}%")
    else
      User.all
    end
  end
end
