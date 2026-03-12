# Simple Messaging App

A messaging application built with Golang, Fiber, GORM, MySQL, Websocket and MongoDB.

## Quick Start (Docker)

1. Copy environment variables:
   ```bash
   cp .env.example .env
   ```

2. Start all services:
   ```bash
   docker-compose up -d --build
   ```

3. Access the application:
   - API: `http://localhost:4000`
   - WebSocket: `ws://localhost:8080`

## Local Development

To run the Go app manually and only use Docker for the databases:

1. Start dependencies:
   ```bash
   docker-compose up -d mysql mongodb apm-server
   ```

2. Run the app:
   ```bash
   go mod download
   go run main.go
   ```