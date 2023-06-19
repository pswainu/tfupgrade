resource "google_cloudbuild_trigger" "run-upgrade" {
  name = "tfupgrade"
  github {
    name = "tfupgrade"
    owner = "pswainu"
    push {
      branch = "dev"
    }
  }
  substitutions = {
    _FOO = "bar"
    _BAZ = "qux"
  }

  filename = "cloudbuild.yaml"
}