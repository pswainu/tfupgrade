resource "google_cloudbuild_trigger" "run-upgrade" {
  name = "gcp-upgrade"
  github {
    name = "gcp-upgrade"
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