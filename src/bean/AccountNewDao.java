package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 */
public class AccountNewDao {
    public static boolean createNewAccount(int id, Account a){
        try {
            System.out.println("Hey");
            Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("INSERT INTO accounts (title, website, username, password, user_id) VALUES (?, ?, ?, ?, ?)");
            ps.setString(1, a.getTitle());
            ps.setString(2, a.getWebsite());
            ps.setString(3, a.getUsername());
            ps.setString(4, a.getPassword());
            ps.setInt(5, id);

            ps.executeUpdate();
        } catch (Exception e){
            System.err.println("Got an exception");
            System.err.println(e.getMessage());
            return false;
        }
        return true;
    }
}
