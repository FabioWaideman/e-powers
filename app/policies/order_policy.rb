class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def create?
      true
    end

    def new?
      create?
    end
    
    def resolve
      scope.all
    end
  end
end
