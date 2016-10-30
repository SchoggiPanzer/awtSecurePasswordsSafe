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
            PreparedStatement ps = con.prepareStatement("INSERT INTO users VALUES(?,?,?)");
            ps.setString(1, u.getUname());
            ps.setString(2, u.getUpw());
            ps.setString(3, u.getUemail());

            status = ps.executeUpdate();
        } catch (Exception e) {}

        return status;
    }
}
