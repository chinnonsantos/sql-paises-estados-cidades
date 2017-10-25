class CreateCountries < ActiveRecord::Base[5.0]
  def change
    create_table :countries, id: true do | t |
      t.string :name
      t.string :name_ptbr
      t.string :initials
      t.string :bacen_code

      t.timestamps
    end
  end
end
