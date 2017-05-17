RailsAdmin.config do |config|
  config.total_columns_width = 9999999

  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan
     # config.authorize_with :cancan, AdminAbility


  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true

  # config.actions do
    # dashboard                     # mandatory
    # index                         # mandatory
    # new
    # export
    # bulk_delete
    # show
    # edit
    # delete
    # show_in_app

    # ## With an audit adapter, you can add:
    # # history_index
    # # history_show
  # end

  config.actions do
    #dashboard                     # mandatory
    # hide disable record count bar graphs, https://github.com/sferik/rails_admin/wiki/Dashboard-action
    dashboard do
      statistics false
    end
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
     history_index
     history_show
  end

  # got error.. include_all_fields
  # don't exclude empty fields in show...
  config.compact_show_view = false

  
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  #  http://stackoverflow.com/questions/11658281/rails-admin-display-name-instead-of-id
  # 2017-05-16 kwruby 
  # see the model for this item as well.
  config.model 'QuestionList' do
    object_label_method do
      :ra_question_list_nameref
    end
  end


end
