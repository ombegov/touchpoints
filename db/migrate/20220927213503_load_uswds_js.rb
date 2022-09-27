class LoadUswdsJs < ActiveRecord::Migration[7.0]
  def change
    add_column :forms, :load_uswds_js, :boolean, default: true

    Form.update_all(load_uswds_js: true)
  end
end
