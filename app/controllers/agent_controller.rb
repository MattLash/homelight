class AgentController < ApplicationController
  def new
  end

  def create
  end

  def index
  	@agents = Agent.all
  end

  def show
  	@agent = Agent.find(params[:id])
  end
end
