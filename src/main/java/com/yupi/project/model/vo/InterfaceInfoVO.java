package com.yupi.project.model.vo;

import com.clarity.apibackend.publicinterface.model.entity.InterfaceInfo;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 接口信息封装视图
 *
 * @author: clarity
 * @date: 2023年01月18日 14:57
 */

@EqualsAndHashCode(callSuper = true)
@Data
public class InterfaceInfoVO extends InterfaceInfo {

    /**
     * 调用次数
     */
    private Integer totalNum;

    private static final long serialVersionUID = 1L;
}
