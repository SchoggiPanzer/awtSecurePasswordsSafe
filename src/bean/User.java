package bean;

/**
 * Created by Daniel Hirt ond Michel Tüscher
 */
public class User {
    private String uname, upw, uemail;

    public String getUname(){
        return uname;
    }

    public void setUname(String uname){
        this.uname = uname;
    }

    public String getUpw(){
        return upw;
    }

    public void setUpw(String upw){
        this.upw = upw;
    }

    public String getUemail(){
        return uemail;
    }

    public void setUemail(String uemail){
        this.uemail = uemail;
    }
}
