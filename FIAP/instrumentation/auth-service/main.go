package main

import (
    "fmt"
    "net/http"
    "go.opentelemetry.io/otel"
    "go.opentelemetry.io/otel/trace"
)

func main() {
    tracer := otel.Tracer("auth-service")

    http.HandleFunc("/login", func(w http.ResponseWriter, r *http.Request) {
        ctx, span := tracer.Start(r.Context(), "LoginHandler")
        defer span.End()

        fmt.Fprintf(w, "Login realizado com sucesso!")
        // Aqui poderíamos adicionar métricas e logs
        // Exemplo: tempo de execução, status da requisição
        _ = ctx
    })

    fmt.Println("Auth Service rodando na porta 8080...")
    http.ListenAndServe(":8080", nil)
}
