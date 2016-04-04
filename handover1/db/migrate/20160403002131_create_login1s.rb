class CreateLogin1s < ActiveRecord::Migration
  def change
    create_table :login1s do |t|
      t.string :Email
      t.string :CompanyName
      t.string :Phone
      t.string :EscalationLevel
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
