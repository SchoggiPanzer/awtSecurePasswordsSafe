package bean;

/**
 * Created by Daniel Hirt, Michel Tüscher
 */
public class Account {
    private String title, website, username, password;
    private int id;

    public Account(){}

    public Account(int accountId, String title, String website, String username, String password) {
        this.id = accountId;
        this.title = title;
        this.website = website;
        this.username = username;
        this.password = password;
    }

    public String getTitle(){
        return title;
    }

    public void setTitle(String title){
        this.title = title;
    }

    public String getUsername(){
        return username;
    }

    public void setUsername(String username){
        this.username = username;
    }

    public String getWebsite(){
        return website;
    }

    public void setWebsite(String website){
        this.website = website;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password = password;
    }

    public int getID() { return this.id; }
}
