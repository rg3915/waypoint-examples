project = "example-nodejs"

app "example-nodejs" {

  build {
    use "pack" {}
    registry {
        use "docker" {
          image = "nodejs-example"
          tag = "latest"
        }
    }
 }

  deploy { 
    use "nomad" {
      datacenter = "dc1"
    }
  }

}
