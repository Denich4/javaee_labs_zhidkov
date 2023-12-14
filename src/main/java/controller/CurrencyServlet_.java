package controller;

import domain.Currency;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/currency")
public class CurrencyServlet_ extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CurrencyServlet_() {
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

        request.setAttribute("currencies", currencies);


//        response.setContentType("text/html");
//        PrintWriter writer = response.getWriter();
//        try {
//            writer.println("<h2>Привет CurrencyServlet</h2>");
//        } finally {
//            writer.close();
//        }
        request.getRequestDispatcher("/views/currency.jsp").forward(request,
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
