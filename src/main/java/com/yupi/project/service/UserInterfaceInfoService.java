package com.yupi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.yupi.project.model.entity.UserInterfaceInfo;

/**
* @author Clarity
* @description 针对表【user_interface_info(接口信息)】的数据库操作Service
* @createDate 2022-11-24 10:25:31
*/
public interface UserInterfaceInfoService extends IService<UserInterfaceInfo> {

    /**
     * 校验
     *
     * @param userInterfaceInfo
     * @param add 是否为创建校验
     */
    void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add);

    /**
     * 统计接口调用次数 + 1
     *
     * @param interfaceInfoId
     * @param userId
     * @return
     */
    boolean invokeCount(long interfaceInfoId, long userId);
}
