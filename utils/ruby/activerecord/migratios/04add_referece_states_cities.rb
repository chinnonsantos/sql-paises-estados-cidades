class AddReferenceSatesInCities < ActiveRecord::Base[5.0]
  def change
    add_reference :cities, :states, foreign_key: true, after: :name
  end
end
