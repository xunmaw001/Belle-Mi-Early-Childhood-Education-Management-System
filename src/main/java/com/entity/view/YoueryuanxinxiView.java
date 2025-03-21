package com.entity.view;

import com.entity.YoueryuanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 幼儿园信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-12 15:54:05
 */
@TableName("youeryuanxinxi")
public class YoueryuanxinxiView  extends YoueryuanxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YoueryuanxinxiView(){
	}
 
 	public YoueryuanxinxiView(YoueryuanxinxiEntity youeryuanxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, youeryuanxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
