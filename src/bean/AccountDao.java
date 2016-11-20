package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 *
 * Data Access Object for creating new Account
 */
public class AccountDao {
    /**
     * function for creating new account
     * gets the data from the form and insert they in the db
     * @param id account id
     * @param a account
     * @return true when successful, false when not
     */
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

    public static boolean deleteAcc(int id){
        try {
           Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("DELETE FROM accounts where account_id = ?");
            ps.setInt(1, id);

            ps.executeUpdate();
        } catch (Exception e){
            System.out.println(e.getMessage());
            return false;
        }
        System.out.println("Acc deleted");
        return true;
    }


    public static Account getAcc(int id) {
        try {
            Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("SELECT * FROM accounts WHERE account_id = ?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                Account acc = new Account();
                acc.setTitle(rs.getString("title"));
                acc.setPassword(rs.getString("password"));
                acc.setUsername(rs.getString("username"));
                acc.setWebsite(rs.getString("website"));
                return acc;
            }
        } catch (Exception e){
            System.out.println(e.getMessage());
            return null;
        }
        return null;
    }

    public static boolean update(int id, Account a) {
        try {
            Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("UPDATE accounts SET title=?, website=?, username=?, password=? WHERE account_id=?");

            ps.setString(1, a.getTitle());
            ps.setString(2, a.getWebsite());
            ps.setString(3, a.getUsername());
            ps.setString(4, a.getPassword());
            ps.setInt(5, id);

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }
}
