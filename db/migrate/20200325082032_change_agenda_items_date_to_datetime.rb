class ChangeAgendaItemsDateToDatetime < ActiveRecord::Migration[5.1]
  def change
    remove_column(:agenda_items,:date)
    add_column(:agenda_items, :time, :datetime)
  end
end
