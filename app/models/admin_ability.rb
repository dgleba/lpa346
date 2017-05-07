# in models/admin_ability.rb
class AdminAbility
  include CanCan::Ability
  def initialize(user)

    if user.lr_admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    elsif user.lr_future4?
      can :read, Customer
      can :create, Customer
      can :update, Customer do |customer|
        Customer.try(:user) == user
      end
      can :destroy, Customer do |customer|
        Customer.try(:user) == user
      end
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard

    elsif user.lr_supervisor?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard                  # allow access to dashboard
      can :read, [ User, Role, Product, Pfeature, CountryOfOrigin, Answer, PartNumber, ProcessStep, Question, Survey] 
      can :create, [Product, Pfeature, CountryOfOrigin, Answer, PartNumber, ProcessStep, Question, Survey] 
      can :update, [Product, Pfeature, CountryOfOrigin, Answer, PartNumber, ProcessStep, Question, Survey] 
      # Performed checks for `collection` scoped actions:
      can :export, [Product, Pfeature, CountryOfOrigin, Answer, PartNumber, ProcessStep, Question, Survey] 
      can :history, [Product, Pfeature, CountryOfOrigin, Answer, PartNumber, ProcessStep, Question, Survey]        # for HistoryIndex
      # Performed checks for `member` scoped actions:
      #can :history, [Customer, Vehicle, Passenger]        # for HistoryShow
      # can :show_in_app, [Product, Pfeature, CountryOfOrigin, Answer, PartNumber, ProcessStep, Question, Survey] 
      can :show_in_app, :all
      
      
    # elsif user.lr_regular?
      # can :access, :rails_admin       # only allow admin users to access Rails Admin
      # can :dashboard                  # allow access to dashboard
      # can :read, [Customer, Vehicle, Passenger, Product , Answer, PartNumber, ProcessStep, Question, Survey] 
      # cannot :create, [Customer, Vehicle, Passenger, Product , Answer, PartNumber, ProcessStep, Question, Survey] 
      # cannot :update, [Customer, Vehicle, Passenger] 
      # # Performed checks for `collection` scoped actions:
      # can :export, [Customer, Vehicle, Passenger] 
      # can :history, [Customer, Vehicle, Passenger]        # for HistoryIndex
      # # Performed checks for `member` scoped actions:
      # #can :history, [Customer, Vehicle, Passenger]        # for HistoryShow
      # can :show_in_app, [Customer, Vehicle, Passenger] 
      
    elsif user.lr_readonly?
      can :read, Vehicle
      
    end

  end
  
end