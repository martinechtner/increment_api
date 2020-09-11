class CreateUserIncrements < ActiveRecord::Migration[6.0]
  def change
    create_table :user_increments do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :current, null: false, default: 1

      t.timestamps
    end

    execute <<-SQL
      ALTER TABLE user_increments ADD CONSTRAINT current CHECK (current > 0);
    SQL
  end
end
