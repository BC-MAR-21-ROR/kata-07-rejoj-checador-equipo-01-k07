# frozen_string_literal: true
require Rails.root.join('lib', 'rails_admin', 'config', 'actions', 'report.rb')

RailsAdmin.config do |config|
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    # export
    bulk_delete
    show
    edit
    delete
    show_in_app  
    report do
      only ['LogTime']
    end
    ## With an audit adapter, you can add:
    # history_index
    # history_show
    config.model 'Branch' do
      fields :id, :name, :address
      # ...
    end
    config.model 'User' do
      exclude_fields :created_at, :updated_at, :reset_password_sent_at, :remember_created_at
      # ...
    end
  end
end
