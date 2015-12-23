class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      t.string :username
      t.references :user, index: true

      t.timestamps
    end
  end
end
