class Game < ActiveRecord::Base
  enum status: { preparation: 0, session: 1, liquidation: 2, finish: 3 }
  has_many :passengers, dependent: :destroy
  has_many :users, through: :passengers
end
