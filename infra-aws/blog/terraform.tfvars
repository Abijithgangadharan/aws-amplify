region             = "eu-west-1"
app_name           = "my-nextjs-app"
repository         = "https://github.com/Abijithgangadharan/nextjs-helloworld"
github_token       = "12345"
build_spec_file    = "amplify.yml"
environment_variables = {
  NODE_ENV = "production"
}
custom_rules = [
  {
    source = "/src"
    target = "/index.js"
    status = "200"
  }
]
tags = {
  Environment = "production"
  Project     = "core"
}
