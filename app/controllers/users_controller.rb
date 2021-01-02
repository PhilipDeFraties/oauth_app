class UsersController < ApplicationController

  def public_repos
    @repos = RepoFacade.public_repos(current_user.username, current_user.token)
  end

  def private_repos
    @repos = RepoFacade.private_repos(current_user.username, current_user.token)
  end

end
