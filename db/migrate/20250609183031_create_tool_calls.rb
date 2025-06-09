class CreateToolCalls < ActiveRecord::Migration[8.0]
  def change
    create_table :tool_calls do |t|
      t.references :message, null: false, foreign_key: true
      t.string :tool_call_id, null: false, index: { unique: true }
      t.string :name, null: false
      t.jsonb :arguments, default: {}

      t.timestamps
    end

    add_reference :messages, :tool_call, foreign_key: true, null: true
  end
end
