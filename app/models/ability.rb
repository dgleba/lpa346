class Ability
  include CanCan::Ability

  def initialize(user)

    if user.lr_admin?
      can :manage, :all
      can :access, :rails_admin       
      can :dashboard                  # allow access to dashboard

    # remember to add roles to user.rb
    #
    # http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails-4-2/  
    #

    elsif user.lr_supervisor?
      can :access, :rails_admin      
      can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      # can :read, :all 
       can :read,  [ Answer, PartNumber, ProcessStep, Question, Survey, QuestionList , User, Role, LayerGroup ]
      can [ :create, :update, ], [ Answer, PartNumber, ProcessStep, Question, Survey, QuestionList, User ]
      # can [ :create, :update, ], [ Product , Pfeature, ProductFeature, CountryOfOrigin  ]
      # can [ :destroy, ], [ Product , ProductFeature,  CountryOfOrigin  ]
      can :export,  :all 

    elsif user.lr_regular?
      can :access, :rails_admin       
      # can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      # can :read, [  Role, User, ]
      can :read, [  Answer, PartNumber, ProcessStep,  Question, Survey, QuestionList ]
      can [ :create, :update, ], [  Answer ]
      can :export,  :all 

    elsif user.lr_future4?
      can :read, [ Product, Role, User]
      can [ :create, :update, :destroy, ], [ Product, ]
      
    elsif user.lr_readonly?
      can :read, Role

    elsif user.lr_minimal?
      can :read, Role

    end
    
  end
   
end

