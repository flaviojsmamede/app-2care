class FamilyMembersController < ApplicationController
  before_action :set_resident

  def index
    @family_members = @resident.family_members
    @family_member = FamilyMember.new
  end

  def show
    @family_member = FamilyMember.find(params[:id])
  end

  def create
    @family_member = @resident.family_members.build(family_member_params)
    if @family_member.save
      redirect_to resident_family_members_path(@family_member)
    else
      @family_members = @resident.family_members
      render :index, status: :unprocessable_entity
    end
  end

  def destroy
    @family_member = @resident.family_members.find(params[:id])
    @family_member.destroy
    redirect_to resident_family_members_path(@resident), notice: "Family Member was successfully destroyed!",
                                                         status: :see_other
  end

  private

  def set_resident
    @resident = Resident.find(params[:resident_id])
  end

  def family_member_params
    params.require(:family_member).permit(:first_name, :last_name, :phone_number, :email, :address, :relationship,
                                          :resident_id)
  end
end
