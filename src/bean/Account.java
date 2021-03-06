package bean;

/**
 * Created by Daniel Hirt, Michel Tüscher
 *
 * Account Bean
 */
public class Account {
    private String title, website, username, password;
    private int id;

    /**
     * Default Constructor
     */
    public Account(){}

    /**
     * Constructor with follow params:
     * @param accountId Account id
     * @param title Titel
     * @param website website
     * @param username username on the website
     * @param password password on the website
     */
    public Account(int accountId, String title, String website, String username, String password) {
        this.id = accountId;
        this.title = title;
        this.website = website;
        this.username = username;
        this.password = password;
    }

    /**
     * gets the title of the website
     * @return title
     */
    public String getTitle(){
        return title;
    }

    /**
     * sets the title of the website
     * @param title title
     */
    public void setTitle(String title){
        this.title = title;
    }

    /**
     * gets the username of the website
     * @return username
     */
    public String getUsername(){
        return username;
    }

    /**
     * sets the username of the website
     * @param username username
     */
    public void setUsername(String username){
        this.username = username;
    }

    /**
     * gets the website of the account
     * @return website
     */
    public String getWebsite(){
        return website;
    }

    /**
     * sets the website of the account
     * @param website website
     */
    public void setWebsite(String website){
        this.website = website;
    }

    /**
     * gets the password of the username on the website
     * @return password
     */
    public String getPassword(){
        return password;
    }

    /**
     * sets the password of the username on the website
     * @param password password
     */
    public void setPassword(String password){
        this.password = password;
    }

    /**
     * gets the id of the Account
     * @return id
     */
    public int getID() { return this.id; }
}
