class UsersController < ApplicationController

  def public_repos
    @repos = RepoFacade.fetch_repos(current_user.username, current_user.token, 'public')
  end

  def private_repos
    @repos = RepoFacade.fetch_repos(current_user.username, current_user.token, 'private')
  end

end
