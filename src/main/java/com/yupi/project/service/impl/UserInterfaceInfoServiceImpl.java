package com.yupi.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.clarity.apibackend.publicinterface.model.entity.UserInterfaceInfo;
import com.yupi.project.common.ErrorCode;
import com.yupi.project.exception.BusinessException;
import com.yupi.project.mapper.UserInterfaceInfoMapper;
import com.yupi.project.service.UserInterfaceInfoService;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
* @author Clarity
* @description 针对表【user_interface_info(接口信息)】的数据库操作Service实现
* @createDate 2022-11-24 10:25:31
*/

@Service
public class UserInterfaceInfoServiceImpl extends ServiceImpl<UserInterfaceInfoMapper, UserInterfaceInfo>
    implements UserInterfaceInfoService{

    @Override
    public void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add) {
        if (userInterfaceInfo == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        long userId = userInterfaceInfo.getUserId();
        long interfaceInfoId = userInterfaceInfo.getInterfaceInfoId();
        // 创建时，所有参数必须非空
        if (add) {
            if (userId <= 0 || interfaceInfoId <= 0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR);
            }
        }
    }

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {
        // 1. 校验参数
        if (interfaceInfoId <= 0 || userId <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        // 2. 更新数据库数据，totalNum 和 leftNum
        UpdateWrapper<UserInterfaceInfo> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("interfaceInfoId", interfaceInfoId);
        updateWrapper.eq("userId", userId);
        updateWrapper.setSql("leftNum = leftNum - 1, totalNum = totalNum + 1");
        // 3. 进行临界值的判断
        updateWrapper.gt("leftNum", 0);
        updateWrapper.set("updateTime", new Date());
        boolean result = this.update(updateWrapper);
        // todo 可进行扩展，如果是分布式下的情况，怎么办，还有事务上的问题
        return result;
    }
}




