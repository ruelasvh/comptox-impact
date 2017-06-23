class CreateFtpMetricsByMonths < ActiveRecord::Migration
  def change
    create_table :ftp_metrics_by_months do |t|

      t.integer :file_id, null: false
      t.string :month, null: false
      t.integer :count, null: false
      t.timestamps null: false
    end
  end
end
