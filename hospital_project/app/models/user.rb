class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


        attr_accessor :first_name
        attr_accessor :last_name
  # validates_presence_of :name
  # validates_uniqueness_of :name, :email, :case_sensitive => false
  # attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  # has_friendly_id :name, :use_slug => true, :strip_non_ascii => true       
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
