package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 */
public class overviewDao {
    public static List<Account> getAccountsById(int id){
        ArrayList<Account> accounts = new ArrayList<>();
        try {
            Connection con = ConnectionProvider.getCon();

            PreparedStatement ps = con.prepareStatement("SELECT * FROM accounts WHERE user_id= ?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                int accountId = rs.getInt("account_id");
                String title = rs.getString("title");
                String website= rs.getString("website");
                String username = rs.getString("username");
                String password = rs.getString("password");
                accounts.add(new Account(accountId, title, website, username, password));
                accounts.add(new Account(accountId, title, website, username, password));
            }

        } catch (Exception e){
            System.err.println("Got an exception");
            System.err.println(e.getMessage());
        }

        return accounts;
    }
}
