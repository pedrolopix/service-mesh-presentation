kind = "service-router"
name = "api"
routes = [
  {
    match {
      http {
        path_prefix = "/vegetables"
      }
    }

    destination {
      service = "vegetables"
      service_subset = "v2"
      prefix_rewrite = "/"
    }
  },
  {
    match {
      http {
        path_prefix = "/superheroes"
      }
    }

    destination {
      service = "superheroes"
      prefix_rewrite = "/"
    }
  },
]
