class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #:recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable
  has_many :investments, dependent: :destroy
end
