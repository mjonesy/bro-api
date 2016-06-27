 class BrosController < ApplicationController
  def index
    @bros = Bro.all
  end

  def create
    @bro = Bro.create(
      name: params[:name],
      bio: params[:bio],
      food: params[:food],
      job: params[:job]
      )
    render "show.json.jbuilder"
  end

  def show
    @bro = Bro.find(params[:id])
  end

  def update
    @bro = Bro.find(params[:id])

    @bro.update(
      name: params[:name],
      bio: params[:bio],
      food: params[:food],
      job: params[:job]
      )

    render "show.json.jbuilder"
  end

  def destroy
    @bro = Bro.find(params[:id])

    @bro.destroy

    render json:{"message" => "Bro no Mo!"}, status: 200
  end
end
