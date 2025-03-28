package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.JiucanxinxiEntity;
import com.entity.view.JiucanxinxiView;

import com.service.JiucanxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 就餐信息
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-12 15:54:05
 */
@RestController
@RequestMapping("/jiucanxinxi")
public class JiucanxinxiController {
    @Autowired
    private JiucanxinxiService jiucanxinxiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JiucanxinxiEntity jiucanxinxi, 
		HttpServletRequest request){

        EntityWrapper<JiucanxinxiEntity> ew = new EntityWrapper<JiucanxinxiEntity>();
    	PageUtils page = jiucanxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiucanxinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JiucanxinxiEntity jiucanxinxi, HttpServletRequest request){
        EntityWrapper<JiucanxinxiEntity> ew = new EntityWrapper<JiucanxinxiEntity>();
    	PageUtils page = jiucanxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jiucanxinxi), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JiucanxinxiEntity jiucanxinxi){
       	EntityWrapper<JiucanxinxiEntity> ew = new EntityWrapper<JiucanxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jiucanxinxi, "jiucanxinxi")); 
        return R.ok().put("data", jiucanxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JiucanxinxiEntity jiucanxinxi){
        EntityWrapper< JiucanxinxiEntity> ew = new EntityWrapper< JiucanxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jiucanxinxi, "jiucanxinxi")); 
		JiucanxinxiView jiucanxinxiView =  jiucanxinxiService.selectView(ew);
		return R.ok("查询就餐信息成功").put("data", jiucanxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JiucanxinxiEntity jiucanxinxi = jiucanxinxiService.selectById(id);
        return R.ok().put("data", jiucanxinxi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JiucanxinxiEntity jiucanxinxi = jiucanxinxiService.selectById(id);
        return R.ok().put("data", jiucanxinxi);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        JiucanxinxiEntity jiucanxinxi = jiucanxinxiService.selectById(id);
        if(type.equals("1")) {
        	jiucanxinxi.setThumbsupnum(jiucanxinxi.getThumbsupnum()+1);
        } else {
        	jiucanxinxi.setCrazilynum(jiucanxinxi.getCrazilynum()+1);
        }
        jiucanxinxiService.updateById(jiucanxinxi);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JiucanxinxiEntity jiucanxinxi, HttpServletRequest request){
    	jiucanxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiucanxinxi);

        jiucanxinxiService.insert(jiucanxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
	@IgnoreAuth
    @RequestMapping("/add")
    public R add(@RequestBody JiucanxinxiEntity jiucanxinxi, HttpServletRequest request){
    	jiucanxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jiucanxinxi);

        jiucanxinxiService.insert(jiucanxinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody JiucanxinxiEntity jiucanxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jiucanxinxi);
        jiucanxinxiService.updateById(jiucanxinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jiucanxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<JiucanxinxiEntity> wrapper = new EntityWrapper<JiucanxinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = jiucanxinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
