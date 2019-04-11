workflow "Deploy Release" {
  on = "push"
  resolves = [" Github Create Release"]
}

action " Github Create Release" {
  uses = "./action-github-create-release"
  secrets = ["GITHUB_TOKEN"]
}
