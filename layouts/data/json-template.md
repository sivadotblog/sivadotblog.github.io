---
title: "{{ .Title }}"
date: {{ .Date }}
author: {{ .Author }}
categories: {{ range .Categories }}- {{ . }}{{ end }}
---

{{ .Content }}
