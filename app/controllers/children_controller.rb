class ChildrenController < ApplicationController
  # GET /children
  # GET /children.json

  before_action :set_child, only: [:show, :edit, :update, :destroy]

  def index
    @children = Child.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
    end
  end

  # GET /children/1
  # GET /children/1.json
  def show

    @user = Person.find(user_id => User.id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child }
    end
  end

  # GET /children/new
  # GET /children/new.json
  def new
    @child = Child.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child }
    end
  end

  # GET /children/1/edit
  def edit

  end

  # POST /children
  # POST /children.json
  def create
    @child = Child.new(child_params)

    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: 'Child was successfully created.' }
        format.json { render json: @child, status: :created, location: @child }
      else
        format.html { render action: "new" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /children/1
  # PUT /children/1.json
  def update


    respond_to do |format|
      if @child.update_attributes(child_params)
        format.html { redirect_to @child, notice: 'Child was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children/1
  # DELETE /children/1.json
  def destroy

    @child.destroy

    respond_to do |format|
      format.html { redirect_to children_url }
      format.json { head :no_content }
    end
  end

  private
  def set_child
    @child = Child.find(params[[:id])
  end

  def child_params
    params.require(:child).permit(:age, :child_care, :language, :name, :user_id)
  end

end
