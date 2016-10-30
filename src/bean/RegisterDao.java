package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 */
public class RegisterDao {
    public static int register(User u){
        int status = 0;

        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("INSERT INTO users (username, password, fname, lname, email) " +
                    "VALUES(?,?,?,?,?)");
            ps.setString(1, u.getUname());
            ps.setString(2, u.getPw());
            ps.setString(3, u.getFname());
            ps.setString(4, u.getLname());
            ps.setString(5, u.getEmail());

            status = ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Got an exception");
            System.err.println(e.getMessage());
        }

        return status;
    }
}
