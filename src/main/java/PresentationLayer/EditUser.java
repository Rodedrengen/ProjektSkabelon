package PresentationLayer;

import FunctionLayer.LoginSampleException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EditUser extends Command {


    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        String IDToEdit = request.getParameter( "userID" );

        HttpSession session = request.getSession();

        session.setAttribute("IDToEdit",IDToEdit);

        return "overview";
    }
}
