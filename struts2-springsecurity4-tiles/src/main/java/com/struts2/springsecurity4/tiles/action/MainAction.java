package com.struts2.springsecurity4.tiles.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Collection;
import java.util.Iterator;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

public class MainAction extends ActionSupport {

    public String username;
    public String password;

    HttpServletRequest request = ServletActionContext.getRequest();

    public String execute() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        System.out.println("Username: " + userDetails.getUsername());
        System.out.println("Password: " + userDetails.getPassword());
        Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>) userDetails.getAuthorities();
        for (Iterator i = authorities.iterator(); i.hasNext();) {
            SimpleGrantedAuthority authority = (SimpleGrantedAuthority) i.next();
            System.out.println("Role: " + authority.getAuthority());
        }
        this.setUsername(request.getUserPrincipal().getName());
        return SUCCESS;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
