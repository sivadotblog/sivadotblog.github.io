+++
archetype = "chapter"
title = "Basics"
weight = 1
+++

Discover what this Hugo theme is all about and the core-concepts behind it.

{{ index .Site.Data "file1" }}

{{ $data := .Site.Data.file1 }}

<h1>{{ $data.title }}</h1>
<p>Author: {{ $data.author }}</p>
<p>Date: {{ $data.date }}</p>
<p>Categories: {{ range $data.categories }}- {{ . }}{{ end }}</p>
<div class="content">
  {{ $data.content | markdown }}
</div>
