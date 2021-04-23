module RailsAdmin
    module Config
      module Actions
        class Report < RailsAdmin::Config::Actions::Base
          #RailsAdmin::Config::Actions.register(self)
          register_instance_option :collection do
            true
          end
  
          register_instance_option :http_methods do
            %i[get post]
          end
  
          register_instance_option :link_icon do
            #'icon-signal'
          end
          register_instance_option :controller do
            proc do
              
              log_times = list_entries(@model_config)
              
              @report_1= log_times.assistance(DateTime.current).count
              @dos= 1212
              binding.pry
              render 'rails_admin/application/report'
            end
          end
        end
      end
    end
  end
  RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::Report)