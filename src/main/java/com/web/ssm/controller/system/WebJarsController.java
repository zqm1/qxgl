package com.web.ssm.controller.system;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.HandlerMapping;
import org.webjars.WebJarAssetLocator;

/**
 * 
 * 这个Controller会将以webjarslocator路径拦截，然后重新组装处理
 * 
 * @author Angel --守护天使
 * 
 * @version v.0.1
 * 
 * @date 2016年12月1日
 * 
 */

@Controller

public class WebJarsController {

	private final WebJarAssetLocator assetLocator = new WebJarAssetLocator();

	@ResponseBody

	@RequestMapping("/webjarslocator/{webjar}/**")

	public ResponseEntity<Object> locateWebjarAsset(@PathVariable String webjar, HttpServletRequest request) {

		try {

			String mvcPrefix = "/webjarslocator/" + webjar + "/"; // This prefix must match the mapping path!

			String mvcPath = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);

			String fullPath = assetLocator.getFullPath(webjar, mvcPath.substring(mvcPrefix.length()));

			return new ResponseEntity<>(new ClassPathResource(fullPath), HttpStatus.OK);

		} catch (Exception e) {

			return new ResponseEntity<>(HttpStatus.NOT_FOUND);

		}

	}

}
