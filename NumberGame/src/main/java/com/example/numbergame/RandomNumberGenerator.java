package com.example.numbergame;

import java.util.Random;

public class RandomNumberGenerator {
    public static int generateNumber(int min, int max) {
        Random random = new Random();
        return random.nextInt((max - min) + 1) + min;
    }
}
