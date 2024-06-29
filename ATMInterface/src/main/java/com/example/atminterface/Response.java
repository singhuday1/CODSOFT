package com.example.atminterface;

public class Response {
    private boolean success;
    private String message;

    public Response(){}

    public boolean isSuccess() {
        return success;
    }

    public Response(boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
