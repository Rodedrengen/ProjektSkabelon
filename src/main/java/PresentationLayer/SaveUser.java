package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Set;

public class SaveUser extends Command {
    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginSampleException {
        HttpSession session = request.getSession();
        String editedEmail = request.getParameter( "editedEmail" );
        String editedPassword = request.getParameter( "editedPassword" );
        String editedRole = request.getParameter( "editedRole" );
        int idToEdit = Integer.parseInt(request.getParameter("userID"));

        User user = new User( editedEmail, editedPassword,editedRole);
        user.setId(idToEdit);

        LogicFacade.updateUser(user);
        session.setAttribute("IDToEdit",null);
        session.setAttribute("mess",editedEmail + " was succesfully edited");

        Set<User> set = LogicFacade.getAllCustomers();
        session.setAttribute("customermap", set);
        session.setAttribute("size",set.size());

        return "overview";
    }
}
