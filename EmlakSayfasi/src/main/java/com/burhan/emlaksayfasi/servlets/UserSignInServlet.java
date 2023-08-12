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

@WebServlet("/userSignIn")
public class UserSignInServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User(
                req.getParameter("email"),
                req.getParameter("password"));

        UserDao userDao = new UserDaoImpl();
        boolean b = userDao.isRegistered(user);

        if(b) {
            user = userDao.getUserDetails(user); // email ve password üzerine diğer verileride ekliyor. sonra yeniden eşitliyor.
            req.getSession().setAttribute("user", user);
            resp.sendRedirect("index.jsp");
        } else {
            String message = "Hatalı giriş yaptınız. Tekrar deneyiniz.";
            req.setAttribute("userSignInErrorMessage", message);
            req.getRequestDispatcher("userSignIn.jsp").forward(req, resp);
        }
    }
}
