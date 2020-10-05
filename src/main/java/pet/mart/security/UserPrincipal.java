package pet.mart.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import com.springboot.PetMark.entities.Account;


public class UserPrincipal extends org.springframework.security.core.userdetails.User {

    private static final long serialVersionUID = 769250655889495809L;

    private Account account;

    public UserPrincipal(Account account, Collection<? extends GrantedAuthority> authorities) {
        super(account.getUsername(), account.getPassword(), authorities);
        this.account = account;
    }

    public Account getCurrentUser() {
        return account;
    }

    public String getRole() {
    	return account != null ? account.getRole().getId() : null;
    }
}
