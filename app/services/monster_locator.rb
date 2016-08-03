class MonsterLocator
  def recent_spottings(monster)
    true
    # return nil if monster.invisible?
    # Spotting.
    #   where(monster: monster).
    #   where(created_at: (Time.now - 24.hours)..Time.now)
  end
end
