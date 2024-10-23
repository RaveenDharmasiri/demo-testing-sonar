package com.example.demo.service;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {

    public double calculateTotalPrice(List<Double> prices) {
        double total = 0.0;

        // Bug: Subtracting the price instead of adding it.
        for (Double price : prices) {
            total -= price; // This should be `total += price;`
        }

        return total;
    }
}

