package com.yupi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.clarity.apibackend.publicinterface.model.entity.InterfaceInfo;

/**
* @author Clarity
* @description 针对表【interface_info(接口信息)】的数据库操作Service
* @createDate 2022-11-02 08:44:42
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    /**
     * 校验
     *
     * @param interfaceInfo
     * @param add 是否为创建校验
     */
    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);

}
