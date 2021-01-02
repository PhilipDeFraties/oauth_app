class RepoService
  def self.public_repos(username, token)
    repositories = []
    page = 1
    loop do
      response = Faraday.get("https://api.github.com/user/repos?per_page=100&page=#{page}&visibility=public", {}, {"Authorization": "token #{token}" })
      repos = JSON.parse(response.body, symbolize_names: true)
      break if repos.empty?
      repositories << repos
      page += 1
    end
    repositories.flatten
  end

  def self.private_repos(username, token)
    repositories = []
    page = 1
    loop do
      response = Faraday.get("https://api.github.com/user/repos?per_page=100&page=#{page}&visibility=private", {}, {"Authorization": "token #{token}" })
      repos = JSON.parse(response.body, symbolize_names: true)
      break if repos.empty?
      repositories << repos
      page += 1
    end
    repositories.flatten
  end

end
