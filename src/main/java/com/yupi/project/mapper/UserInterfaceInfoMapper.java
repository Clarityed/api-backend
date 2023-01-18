package com.yupi.project.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.clarity.apibackend.publicinterface.model.entity.UserInterfaceInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* @author Clarity
* @description 针对表【user_interface_info(接口信息)】的数据库操作Mapper
* @createDate 2022-11-24 10:25:31
* @Entity com.yupi.project.model.entity.UserInterfaceInfo
*/
public interface UserInterfaceInfoMapper extends BaseMapper<UserInterfaceInfo> {

    /**
     * 查询排名前几的接口 id 及调用次数
     * @param limit 前几名
     * @return 接口 id 及调用次数
     */
    List<UserInterfaceInfo> listTopInvokeInterfaceInfo(@Param("limit") int limit);

}




