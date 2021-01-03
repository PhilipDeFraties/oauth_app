class RepoService
  def self.user_repos(username, token, visibility)
    repositories = []
    page = 1
    loop do
      response = Faraday.get("https://api.github.com/user/repos?per_page=100&page=#{page}&visibility=#{visibility}", {}, {"Authorization": "token #{token}" })
      repos = JSON.parse(response.body, symbolize_names: true)
      break if repos.empty?
      repositories << repos
      page += 1
    end
    repositories.flatten
  end
end
