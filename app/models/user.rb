class User < ApplicationRecord
  has_many :playthroughs
  has_and_belongs_to_many :achievements

  validates :username, presence: true, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }



  def update_user_achievements(game_id)
    self.update_three_in_a_row(game_id)
    self.update_big_gainer
    self.update_explorer
  end


  def update_three_in_a_row(game_id)
    @three_in_a_row = Achievement.find_by(name: "3 in a row")
    if self.achievements.find_by(id: @three_in_a_row.id).nil?
      if self.playthroughs.count >= 3
        playthroughs = self.playthroughs.includes(:game).last(3)
        playthroughs.each do |p|
          return unless p.game.id == Integer(game_id)
        end
        self.achievements << @three_in_a_row
      end
    end
  end


  def update_big_gainer
    @big_gainer = Achievement.find_by(name: "Big gainer")
    if self.achievements.find_by(id: @big_gainer.id).nil?
      self.achievements << @big_gainer if self.score >= 5000
    end
  end


  def update_explorer
    @explorer = Achievement.find_by(name: "Explorer")
    if self.achievements.find_by(id: @explorer.id).nil?
      self.achievements << @explorer if self.playthroughs.distinct.pluck(:game_id).count >= 3
    end
  end

end
