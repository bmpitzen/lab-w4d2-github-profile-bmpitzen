class UserController < ApplicationController
  def index
    auth = {:username => "bmpitzen", :password => "3d388c424f6abf55a758253ee8273f8d940f188d"}
    @user_profile = HTTParty.get('https://api.github.com/users/bmpitzen', :basic_auth => auth)
    user_repos = HTTParty.get('https://api.github.com/users/bmpitzen/repos', :basic_auth => auth)
    @repos = user_repos.parsed_response
  end
end