class Ability
  include CanCan::Ability

  def initialize(user)

    if user.lr_admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    # remember to add roles to user.rb
    #
    # http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails-4-2/  
    #

    elsif user.lr_supervisor?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
       can :read, :all 
      can [ :create, :update, ], [ Answer, PartNumber, ProcessStep, Question, Survey, QuestionList ]
      can [ :create, :update, ], [ Product , Pfeature, ProductFeature, CountryOfOrigin  ]
      can [ :destroy, ], [ Product , ProductFeature,  CountryOfOrigin  ]
      can :export,  :all 

    elsif user.lr_regular?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :show_in_app, :all
       # can :read, [  Role, User, ]
      can :read, [ Product,  Answer, PartNumber, ProcessStep,  Question, Survey, QuestionList ]
      can [ :create, :update, ], [ Product, Answer ]
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

