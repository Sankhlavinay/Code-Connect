class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable

  PROFILE_TITLE = [
    "Senior ROR Developer",
    "Junior ROR Developer",
    "Full Stack ROR Developer",
    "Senior Full Stack MERN Developer",
    "Junior Full Stack MERN Developer",
    "Junior Full Stack Java Developer",
    "Senior Full Stack Java Developer"
  ].freeze  


  def name
    "#{first_name} #{last_name}".strip
  end

  def address
    "#{city}, #{state}, #{country}, #{pincode}, "
  end

  def self.ransackable_attributes(auth_object = nil)
    ["city", "country"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end    
end
