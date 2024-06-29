package com.example.numbergame;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/game")
public class GameServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final int MAX_ATTEMPTS = 5;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Integer targetNumber = (Integer) session.getAttribute("targetNumber");
        Integer attemptsLeft = (Integer) session.getAttribute("attemptsLeft");

        if (targetNumber == null || attemptsLeft == null) {
            targetNumber = RandomNumberGenerator.generateNumber(1, 100);
            attemptsLeft = MAX_ATTEMPTS;
            session.setAttribute("targetNumber", targetNumber);
            session.setAttribute("attemptsLeft", attemptsLeft);
        }

        request.getRequestDispatcher("/game.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer targetNumber = (Integer) session.getAttribute("targetNumber");
        Integer attemptsLeft = (Integer) session.getAttribute("attemptsLeft");

        if (targetNumber == null || attemptsLeft == null) {
            response.sendRedirect("game");
            return;
        }

        String guessStr = request.getParameter("guess");
        int guess = Integer.parseInt(guessStr);
        String message;

        if (guess < targetNumber) {
            message = "Too low!";
        } else if (guess > targetNumber) {
            message = "Too high!";
        } else {
            message = "Correct! The number was " + targetNumber;
            session.invalidate();
            request.setAttribute("playAgain", true);
            request.setAttribute("message", message);
            request.getRequestDispatcher("/game.jsp").forward(request, response);
            return;
        }

        attemptsLeft--;
        session.setAttribute("attemptsLeft", attemptsLeft);

        if (attemptsLeft <= 0) {
            message = "You've run out of attempts. The correct number was " + targetNumber;
            session.invalidate();
            request.setAttribute("playAgain", true);
        }

        request.setAttribute("message", message);
        request.getRequestDispatcher("/game.jsp").forward(request, response);
    }
}
