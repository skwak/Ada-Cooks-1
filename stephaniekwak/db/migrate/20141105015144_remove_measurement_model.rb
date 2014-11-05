class RemoveMeasurementModel < ActiveRecord::Migration
  def change
    drop_table :measurements
  end
end
