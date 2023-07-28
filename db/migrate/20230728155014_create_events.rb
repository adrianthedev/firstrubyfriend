class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events, id: false do |t|
      t.binary :id, limit: 16, primary_key: true, auto_generate: true

      t.references :user, null: false, foreign_key: true, type: :binary
      t.string :action, null: false
      t.string :user_agent
      t.string :ip_address

      t.timestamps
    end
  end
end
