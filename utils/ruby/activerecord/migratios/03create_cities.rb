class CreateCities < ActiveRecord::Base[5.0]
  def change
    create_table :cities, id: true do | t |
      t.string :name
      t.integer :ibge_code

      t.timestamps
    end

  end
end
