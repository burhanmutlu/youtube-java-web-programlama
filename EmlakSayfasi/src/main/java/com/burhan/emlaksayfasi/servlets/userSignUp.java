package com.burhan.emlaksayfasi.servlets;

import com.burhan.emlaksayfasi.dao.UserDao;
import com.burhan.emlaksayfasi.dao.UserDaoImpl;
import com.burhan.emlaksayfasi.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/userSignUp")
public class userSignUp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User(
                req.getParameter("userName"),
                req.getParameter("userSurname"),
                req.getParameter("email"),
                req.getParameter("password"));

        UserDao userDao = new UserDaoImpl();
        boolean b = userDao.addUser(user);

        if(b) {
            resp.sendRedirect("index.jsp");
        } else {
            String message = "Hatalı kayıt yaptınız. Tekrar deneyiniz.";
            req.setAttribute("userSignUpErrorMessage", message);
            req.getRequestDispatcher("userSignUp.jsp").forward(req, resp);
        }
    }
}
