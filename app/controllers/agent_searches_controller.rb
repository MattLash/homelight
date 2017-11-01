class AgentSearchesController < ApplicationController
  include HTTParty
 
  def show
    @search = AgentSearch.find(params[:id])
    @agents = Agent.where(id: @search.agent_ids.split(","))
    
    puts "==============================================================="
    profiles = HTTParty.get "https://randomuser.me/api/?results=#{@agents.count.to_s}"
    
    # puts profiles["results"][0]["gender"]
    # puts profiles["results"]
    puts "agent count is: " + @agents.count.to_s 
    puts "profile count is: " + profiles["results"].count.to_s
    @pictures = []
    
    profiles["results"].each do |x|
      # puts profiles["results"][x]
      @pictures << x["picture"]["medium"]
      # @agents.picture
    end
    
    # @agents.zip(pictures)
    
  
    
    # @agents.each do |x|
    #   puts x.photo << pictures[i]
    #   # i++
    # end
    
    puts @pictures
    
    puts "==============================================================="
  
  end

  def create
    search = AgentSearch.new(params.permit(:txn_side, :prop_type, :price_range))
    
    if search.txn_side.blank? || search.prop_type.blank? || search.price_range.blank?
      redirect_to(root_path)
      return
    end
    
    search.find_agent_matches!

    if search.save
      redirect_to agent_search_path(search)
    end

  end

end
