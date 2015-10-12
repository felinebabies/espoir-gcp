class Game < ActiveRecord::Base
  enum status: { preparation: 0, session: 1, liquidation: 2, finish: 3 }

end
