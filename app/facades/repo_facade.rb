class RepoFacade
  def self.public_repos(username, token)
    json = RepoService.public_repos(username, token)
    json.map do |repo|
      Repo.new(repo)
    end
  end

  def self.private_repos(username, token)
    json = RepoService.private_repos(username, token)
    json.map do |repo|
      Repo.new(repo)
    end
  end
end
