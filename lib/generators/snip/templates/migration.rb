class Create<%= model_name.pluralize %> < ActiveRecord::Migration
  def self.up
    create_table <%= table_name.to_sym %>, :force => true do |t|
      t.string :long_url
      t.timestamps
    end
    add_index <%= table_name.to_sym %>, :long_url, :unique => true
    snips_pad = <%= model_name %>.new :long_url => "http://" + APP_DOMAIN
    snips_pad.id = 46600
    snips_pad.save
  end

  def self.down
    drop_table :snips
  end
end