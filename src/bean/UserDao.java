package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 */
public class UserDao {

    public static String getPw(int id) {
        try {

            Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("SELECT password FROM users WHERE user_id=?");

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) return rs.getString("password");

        } catch (Exception e) {
            return null;
        }
        return null;
    }

    public static boolean changePw(String pw, int id) {
        try {
            Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("UPDATE users SET password=? WHERE user_id=?");

            ps.setString(1, pw);
            ps.setInt(2, id);

            ps.executeUpdate();
        } catch (Exception e){
            return false;
        }
        return true;
    }
}
