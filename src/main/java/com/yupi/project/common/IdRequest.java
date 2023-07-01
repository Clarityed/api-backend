package com.yupi.project.common;

import lombok.Data;

import java.io.Serializable;

/**
 * id 请求
 *
 * @author clarity
 */
@Data
public class IdRequest implements Serializable {
    /**
     * id
     */
    private Long id;

    private static final long serialVersionUID = 1L;
}