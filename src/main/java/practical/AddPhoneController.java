package practical;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class AddPhoneController extends HttpServlet {


    private static final Logger LOGGER = Logger.getLogger(AddPhoneController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/addphone.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LOGGER.log(Level.INFO, req.getParameter("price"));
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String brand = req.getParameter("brand");
        long price = 1;
        try {
            price = Long.parseLong(req.getParameter("price"));
        } catch (NumberFormatException ex){
        }

        String description = req.getParameter("description");

        Phone phone = Phone.Builder.aPhone()
                .withId(id)
                .withName(name)
                .withBrand(brand)
                .withPrice(price)
                .withDescription(description).build();

        ofy().save().entity(phone).now();

        req.getRequestDispatcher("/listphones.jsp").forward(req, resp);
    }
}
