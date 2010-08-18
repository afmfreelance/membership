class FixCents < ActiveRecord::Migration
  def self.up
    rename_column :locals, :dues_annual, :dues_annual_in_cents
    rename_column :locals, :dues_semiannual, :dues_semiannual_in_cents
    rename_column :locals, :dues_quarterly, :dues_quarterly_in_cents
    rename_column :locals, :lif, :lif_in_cents
  end

  def self.down
    rename_column :locals, :dues_annual_in_cents, :dues_annual
    rename_column :locals, :dues_semiannual_in_cents, :dues_semiannual
    rename_column :locals, :dues_quarterly_in_cents, :dues_quarterly
    rename_column :locals, :lif_in_cents, :lif
  end
end
