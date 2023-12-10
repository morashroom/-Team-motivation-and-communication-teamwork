package Javabean;

public class User {
    private String username;
    private String password;
    private User user_temp;
    
    
    //维护临时的状态
    private void setUser_temp(User user) {
    	this.user_temp=user;
    }
    
    
    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
    
    public User getUser_temp() {
        return user_temp;
    }
}
