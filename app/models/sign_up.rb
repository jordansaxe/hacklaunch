class SignUp < ActiveRecord::Base
  validates :name,  :presence => true, 
                    :length => {:minimum => 1, :maximum => 254}
                   
  validates :email, :presence => true, 
                    :length => {:minimum => 3, :maximum => 254},
                    :uniqueness => true,
                    :format => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

  def image_url
    url = Gravatar.new(email).image_url
  end
end
