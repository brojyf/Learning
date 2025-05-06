package main

import (
	"encoding/json"
	"log"
	"net/http"
	"time"
)

// 简单数据模型
type Price struct {
	Date  string  `json:"date"`  // "2025-05-04"
	Price float64 `json:"price"` // 单位：USD / 支
}

// 硬编码玫瑰价格
var priceTable = map[string]float64{
	"2025-05-04": 3.99,
	"2025-05-05": 4.49,
}

func priceHandler(w http.ResponseWriter, r *http.Request) {
	date := r.URL.Query().Get("date")
	if date == "" {
		http.Error(w, "missing date param", http.StatusBadRequest)
		return
	}

	p, ok := priceTable[date]
	if !ok {
		http.Error(w, "price not found", http.StatusNotFound)
		return
	}

	resp := Price{Date: date, Price: p}
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(resp)
}

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/price", priceHandler)

	s := &http.Server{
		Addr:              ":8080",
		Handler:           mux,
		ReadHeaderTimeout: 5 * time.Second,
	}

	log.Println("🍀 服务器运行在 http://localhost:8080")
	if err := s.ListenAndServe(); err != nil {
		log.Fatal(err)
	}
}
