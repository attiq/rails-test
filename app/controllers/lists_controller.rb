class ListsController < ApplicationController

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all

    respond_to do |format|
      format.html # show.html.erb
      format.json {render json: @lists}
    end
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @list = List.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json {render json: @list}
    end
  end

  # GET /lists/new
  # GET /lists/new.json
  def new
    @list = List.new

    respond_to do |format|
      format.html # new.html.erb
      format.json {render json: @list}
    end
  end

  # GET /lists/1/edit
  def edit
    @list = List.find(params[:id])
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.create(list_params)

    respond_to do |format|
      if @list.save
        format.html {redirect_to @list, notice: 'List was successfully created.'}
        format.json {render json: @list, status: :created, location: @list}
      else
        format.html {render action: "new"}
        format.json {render json: @list.errors, status: :unprocessable_entity}
      end
    end
  end

  # PUT /lists/1
  # PUT /lists/1.json
  def update
    @list = List.find(params[:id])

    respond_to do |format|
      if @list.update_attributes(list_params)
        format.html {redirect_to @list, notice: 'List was successfully updated.'}
        format.json {head :no_content}
      else
        format.html {render action: "edit"}
        format.json {render json: @list.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list = List.find(params[:id])
    @list.destroy

    respond_to do |format|
      format.html {redirect_to lists_url}
      format.json {head :no_content}
    end
  end

  private

  def list_params
    params.require(:list).permit!
  end
end
