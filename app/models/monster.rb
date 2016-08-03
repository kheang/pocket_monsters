class Monster < ActiveRecord::Base
  has_many :spottings

  def battle
    false
    # true
  end

  def weight_in_kg
    weight / 100.0
    # weight / 1000.0
  end

  def pretty_height(system: :metric)
    divisor =
      case system
      when :metric then 1000
      when :US then 304.8
      end
    (height / divisor).round(2)
    # (height / divisor).round(1)
  end

  def invisible?
    false
  end
end
