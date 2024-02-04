class ChangeRestaurantsPhoneNumberType < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      change_table :restaurants do |t|
        direction.up   { t.change :phone_number, :string }
        direction.down { t.change :phone_number, :integer }
      end
    end
  end
end
