package com.novel.basic.cms.dao.impl;

import com.novel.basic.cms.dao.PermissionDao;
import com.novel.basic.cms.model.Permission;
import org.springframework.stereotype.Service;

@Service
public class PermissionDaoImpl extends BaseDaoImpl implements PermissionDao {

    @Override
    public Permission createPermission(final Permission permission) {
    	sqlSessionTemplate.insert("createPermission", permission);
        return permission;
    }

    @Override
    public void deletePermission(Long permissionId) {
        //首先把与permission关联的相关表的数据删掉
        sqlSessionTemplate.delete("deleteRolePermission", permissionId);
        //把permission资源删掉
        sqlSessionTemplate.delete("deletePermission", permissionId);
    }

}
