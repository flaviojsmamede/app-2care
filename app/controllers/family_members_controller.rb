class FamilyMembersController < ApplicationController
  def index
    @resident = Resident.find(params[:resident_id])
    @family_members = @resident.family_members
  end

  def show
    @family_member = FamilyMember.find(params[:id])
    @resident = Resident.find(params[:resident_id])
  end

  private

  def family_member_params
    params.require(:family_member).permit(:first_name, :last_name, :phone_number, :email, :address, :relationship, :resident_id)
  end
end
