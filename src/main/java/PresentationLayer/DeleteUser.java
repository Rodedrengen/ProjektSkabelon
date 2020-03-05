package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Set;

public class DeleteUser extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        int ID = Integer.parseInt(request.getParameter( "userID" ));

        LogicFacade.deleteUser(ID);

        Set<User> set = LogicFacade.getAllCustomers();
        session.setAttribute("customermap", set);
        session.setAttribute("size",set.size());

        return "overview";
    }
}
