package com.example.atminterface;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/ATMServlet")
public class ATMServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BankAccount userAccount;

    public void init() {
        // Initialize user's bank account (example initial balance)
        userAccount = new BankAccount(0);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        double amount = 0.0;
        String amountStr;

        if(request.getParameter("checkBalance") == null) {
            amountStr = request.getParameter("amount");
            amount = Double.parseDouble(amountStr);
        }

        Response res = null;
        if (request.getParameter("withdraw") != null) {
            res = withdraw(amount);
        } else if (request.getParameter("deposit") != null) {
            res = deposit(amount);
        } else if (request.getParameter("checkBalance") != null) {
            checkBalance(response);
            return;
        }

        if(res.isSuccess()){
            request.setAttribute("Success",res.getMessage());
        }else{
            request.setAttribute("Error", res.getMessage());
        }

        response.sendRedirect("atm.jsp");
    }

    private Response withdraw(double amount){
        if (amount > 0 && amount <= userAccount.getBalance()) {
            userAccount.withdraw(amount);
            return new Response(true,"Withdraw SuccessFully");
        }
        return new Response(false, "Something Went Wrong, Check your balance now!!");
    }

    private Response deposit(double amount) {
        if (amount > 0) {
            userAccount.deposit(amount);
            return new Response(true,"Successfully Deposit");
        }
        return new Response(false,"Something Went Wrong");
    }

    private void checkBalance(HttpServletResponse response) throws IOException {
        response.getWriter().println("Current Balance: " + userAccount.getBalance());
    }
}

