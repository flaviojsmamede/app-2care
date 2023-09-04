class FamilyMembersController < ApplicationController
  def index
    @family_members = FamilyMember.all
  end

  def show
    @family_member = FamilyMember.find(params[:id])
  end
end
