class RepoFacade
  def self.fetch_repos(username, token, visibility)
    json = RepoService.user_repos(username, token, visibility)
    json.map do |repo|
      Repo.new(repo)
    end
  end
end
