defmodule Issues.GithubIssues do
    @user_agent [{"User-agent", "jm75312@gmail.com"}]

    def fetch(user, project) do
        issues_url(user, project)
        |> HTTPoison.get(@user_agent)
        |> handle_response
    end
end