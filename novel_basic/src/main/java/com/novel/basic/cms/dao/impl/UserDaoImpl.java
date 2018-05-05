package com.novel.basic.cms.dao.impl;

import com.novel.basic.cms.dao.UserDao;
import com.novel.basic.cms.model.Permission;
import com.novel.basic.cms.model.Role;
import com.novel.basic.cms.model.User;
import com.novel.basic.cms.model.UserRole;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * desc : 用户持久化层
 * @author dennis.sun
 */
@Service
public class UserDaoImpl extends BaseDaoImpl implements UserDao {

    @Override
    public User createUser(final User user) {
    	sqlSessionTemplate.insert("createUser", user);
        return user;
    }

    @Override
    public void updateUser(User user) {
    	sqlSessionTemplate.update("updateUser", user);
    }

    @Override
    public void deleteUser(Long userId) {
    	sqlSessionTemplate.delete("deleteUser", userId);
    }

    @Override
    public void correlationRoles(Long userId, Long... roleIds) {
        if(roleIds == null || roleIds.length == 0) {
            return;
        }
        for(Long roleId : roleIds) {
            if(!exists(userId, roleId)) {
            	UserRole ur = new UserRole();
            	ur.setRoleId(roleId);
            	ur.setUserId(userId);
            	sqlSessionTemplate.insert("createUserRoles", ur);
            }
        }
    }

    @Override
    public void uncorrelationRoles(Long userId, Long... roleIds) {
        if(roleIds == null || roleIds.length == 0) {
            return;
        }
        for(Long roleId : roleIds) {
            if(exists(userId, roleId)) {
            	UserRole ur = new UserRole();
            	ur.setRoleId(roleId);
            	ur.setUserId(userId);
            	sqlSessionTemplate.delete("deleteUserRoles", ur);
            }
        }
    }

    private boolean exists(Long userId, Long roleId) {
    	UserRole ur = new UserRole();
    	ur.setRoleId(roleId);
    	ur.setUserId(userId);
        return sqlSessionTemplate.selectOne("existsUserRoles", ur);
    }


    @Override
    public User findOne(Long userId) {
    	return sqlSessionTemplate.selectOne("findOneUserById", userId);
    }

    @Override
    public User findByUsername(String username) {
    	return sqlSessionTemplate.selectOne("findOneUserByName", username);
    }

    @Override
    public Set<String> findRoles(String username) {
    	List<Role> roles = sqlSessionTemplate.selectList("findRoles", username);
    	HashSet<String> rolesSet = new HashSet<String>();
    	for(Role role : roles){
    		rolesSet.add(role.getRole());
    	}
    	return rolesSet;
    }

    @Override
    public Set<String> findPermissions(String username) {
    	//TODO 此处可以优化，比如查询到role后，一起获取roleId，然后直接根据roleId获取即可
    	List<Permission> permissions = sqlSessionTemplate.selectList("findPermissions", username);
    	HashSet<String> permissionsSet = new HashSet<String>();
    	for(Permission permission : permissions){
    		permissionsSet.add(permission.getPermission());
    	}
    	return permissionsSet;
    }

    @Override
    public List<User> findAllUsers() {
        return sqlSessionTemplate.selectList("findAllUsers");
    }
}
