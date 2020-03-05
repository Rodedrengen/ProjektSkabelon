package FunctionLayer;

import DBAccess.UserMapper;

import java.util.Set;

/**
 * The purpose of LogicFacade is to...
 * @author kasper
 */
public class LogicFacade {

    public static User login( String email, String password ) throws LoginSampleException {
        return UserMapper.login( email, password );
    } 

    public static User createUser( String email, String password ) throws LoginSampleException {
        User user = new User(email, password, "customer");
        UserMapper.createUser( user );
        return user;
    }
    public static User createEmployee( String email, String password ) throws LoginSampleException {
        User user = new User(email, password, "employee");
        UserMapper.createUser( user );
        return user;
    }
    public static Set<User> getAllCustomers(){
        return UserMapper.getAllCustomers();
    }

    public static void deleteUser(int id) {
        UserMapper.deleteUser(id);
    }

    public static void updateUser(User user) {

        UserMapper.updateUser(user);
    }
}
