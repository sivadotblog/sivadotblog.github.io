+++
archetype = "chapter"
title = "Basics"
weight = 1
+++

Discover what this Hugo theme is all about and the core-concepts behind it.

{{ $productlist := site.Data.productlist }}
{{ range $productlist.products }}
  {{ if eq .title "Hugo Hula Hoop" }}
    {{ range .variants }}
      {{ .price }}
    {{ end }}
  {{ end }}
{{ end }}`

{{ $urlPre := "https://api.github.com" }}
{{ $gistJ := getJSON $urlPre "/users/GITHUB_USERNAME/gists" }}
