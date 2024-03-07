package handler

import (
	"net/http"

	"github.com/hadrienmarquez/go-templ-dev-server/basic-app/templates/home"
)


func DefaultHandler(w http.ResponseWriter, r *http.Request)  {
home.Page().Render(r.Context(), w)

}
