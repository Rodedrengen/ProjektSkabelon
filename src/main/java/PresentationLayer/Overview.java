package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Set;

public class Overview extends Command{


    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        Set<User> set = LogicFacade.getAllCustomers();
        Set<User> newSet = LogicFacade.getAllEmployees();
        set.addAll(newSet);
        session.setAttribute("customermap", set);
        session.setAttribute("size",set.size());

        return "overview";
    }
}
