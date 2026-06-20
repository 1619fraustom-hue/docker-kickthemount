group "default" {
  targets = ["kickthemount"]
}

target "kickthemount" {
  context = "."
  dockerfile = "Dockerfile"

  tags = [
    "jared7/kickthemount:latest"
  ]
}

