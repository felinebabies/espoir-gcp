class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {member: 0, admin: 1}
  validates :name, presence: true, length: { maximum: 50 }
  has_many :passengers, dependent: :destroy
  has_many :games, through: :passengers

  after_initialize :set_default, if: :new_record?

  private
  def set_default
    self.role ||= :member
  end
end
