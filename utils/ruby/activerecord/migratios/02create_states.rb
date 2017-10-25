class CreateStates < ActiveRecord::Base[5.0]
  def change
    create_table :states, id: true do | t |
      t.string :name
      t.string :initials
      t.integer :ibge_code
      t.integer :sl
      t.string :ddd

      t.timestamps
    end
  end
end
