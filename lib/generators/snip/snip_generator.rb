class SnipGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.migration_template 'templates/migration.rb', :assigns => { :table_name => args.first.tableize, :model_name => args.first.classify }
    end
  end
end