package controller;

import domain.Currency;
import domain.Order;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/order")
public class OrderServlet_ extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet_() {
        super();
// TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request,
     * HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {

        Currency c1 = new Currency(1l, "Рубль", "RUB");
        Currency c2 = new Currency(2l, "Доллар", "USD");
        Currency c3 = new Currency(3l, "Евро", "EUR");
        Currency c4 = new Currency(4l, "Песо", "MXN");
        Currency[] currencies = {c1, c2, c3, c4};

        Order p1 = new Order(1l, "Брокерская", "Какая-то", c1, "SBER", 100l, 656465l, "11.08.2003", "11.08.2004");
        Order p2 = new Order(2l, "Неброкерская", "Какая-то2", c2, "RSQA", 100l, 312322l, "11.08.2003", "11.08.2004");
        Order p3= new Order(3l, "Брокерская", "Какая-то3", c3, "TRMO", 100l, 423424l, "11.08.2003", "11.08.2004");
        Order p4 = new Order(4l, "Неброкерская", "Какая-то4", c4, "RJIV", 100l, 654645l, "11.08.2003", "11.08.2004");
        Order[] orders = new Order[]{p1, p2, p3, p4};

        request.setAttribute("currencies", currencies);
        request.setAttribute("orders", orders);
        request.getRequestDispatcher("/views/order.jsp").forward(request,
                response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request,
     * HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
// TODO Auto-generated method stub
        doGet(request, response);
    }
}
