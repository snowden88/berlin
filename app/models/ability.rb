class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
    if user.admin?
      can :manage, :all
    else
      can :manage, User, id: user.id
    end
  end
end
