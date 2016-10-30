package bean;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 */
public class User {
    private String uname, pw, email, lname, fname;

    public String getUname(){
        return uname;
    }

    public void setUname(String uname){
        this.uname = uname;
    }

    public String getPw(){
        return pw;
    }

    public void setPw(String pw){
        this.pw = pw;
    }

    public String getEmail(){
        return email;
    }

    public void setEmail(String uemail){
        this.email = uemail;
    }

    public String getLname() { return lname; }

    public void setLname(String lname){ this.lname = lname; }

    public String getFname() { return fname; }

    public void setFname(String fname){ this.fname = fname; }


}
