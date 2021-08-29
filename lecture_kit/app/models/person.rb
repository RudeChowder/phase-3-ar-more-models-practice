class Person < ActiveRecord::Base
  has_many :plant_parenthoods
  has_many :plants, through: :plant_parenthoods
  has_many :waterings
  has_many :waterees, through: :waterings

  def water_plant(plant)
    Watering.create(waterer: self, wateree: plant)
    parenthood = plant_parenthoods.find_by(plant: plant)
    return unless parenthood

    new_affection = parenthood.affection
    new_affection += 1
    parenthood.update(affection: new_affection)
  end
end
