class InvoicePolicy < ApplicationPolicy
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    binding.pry
  end
end
