class FamilyMembersController < ApplicationController
  def index
    @resident = Resident.find(params[:resident_id])
    @family_members = FamilyMember.all
  end

  def show
    @family_member = FamilyMember.find(params[:id])
  end
end
