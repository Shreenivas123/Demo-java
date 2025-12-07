package com.example;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        
        // Use getOutputStream() instead of getWriter()
        String htmlContent = "<h1>Hello, deployed from CI CD</h1>";
        resp.getOutputStream().write(htmlContent.getBytes(StandardCharsets.UTF_8));
        resp.getOutputStream().flush();
    }
}
