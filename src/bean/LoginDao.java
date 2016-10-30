package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 */
public class LoginDao {
    public static boolean validate(User u){
        boolean status = false;

        try {
            Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");

            ps.setString(1, u.getEmail());
            ps.setString(2, u.getPw());

            ResultSet rs = ps.executeQuery();
            status = rs.next();
        } catch (Exception e){}

        return status;
    }
}
