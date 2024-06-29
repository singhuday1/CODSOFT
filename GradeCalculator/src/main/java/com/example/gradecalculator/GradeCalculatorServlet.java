package com.example.gradecalculator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/gradeCalculator")
public class GradeCalculatorServlet extends HttpServlet {

    private final int NUMBER_OF_SUBJECTS = 5;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int marks[] = new int[NUMBER_OF_SUBJECTS];

        for(int i = 0; i < NUMBER_OF_SUBJECTS; i++){
            marks[i] = Integer.parseInt(request.getParameter("marks"+(i+1)));
        }

        int totalMarks = 0;

        for(int mark : marks){
            totalMarks += mark;
        }

        double averagePercentage = (double) totalMarks / NUMBER_OF_SUBJECTS;

        String grade;
        if (averagePercentage >= 90) {
            grade = "A";
        } else if (averagePercentage >= 80) {
            grade = "B";
        } else if (averagePercentage >= 70) {
            grade = "C";
        } else if (averagePercentage >= 60) {
            grade = "D";
        } else {
            grade = "F";
        }

        // Forward results to JSP
        request.setAttribute("totalMarks", totalMarks);
        request.setAttribute("averagePercentage", averagePercentage);
        request.setAttribute("grade", grade);
        request.getRequestDispatcher("results.jsp").forward(request, response);
    }
}
