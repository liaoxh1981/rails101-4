class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_parpms)
    @group.save

    redirect_to groups_path
  end

  def update
    @group = Group.find(params[:id])

    @group.update(group_parpms)

    redirect_to groups_path, notice: "Update Success"
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    flash[:alert] = "Group deleted"
    redirect_to groups_path
  end

  private

  def group_parpms
    params.require(:group).permit(:title, :description)
  end

end
