package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DeleteUser extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();

        int ID = Integer.parseInt(request.getParameter( "userID" ));

        LogicFacade.deleteUser(ID);

        session.setAttribute("customermap", LogicFacade.getAllCustomers());

        return "overview";
    }
}
