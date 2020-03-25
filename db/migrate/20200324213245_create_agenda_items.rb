class CreateAgendaItems < ActiveRecord::Migration[5.1]
  def change
    create_table :agenda_items do |t|
      t.text :content
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
