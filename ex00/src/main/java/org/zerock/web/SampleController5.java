package org.zerock.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.ProductVo;

@Controller
public class SampleController5 {

	private static final Logger logger = LoggerFactory.getLogger(SampleController5.class);
	
	@RequestMapping("/doJSON")
	public @ResponseBody ProductVo doJSON() {
		
		ProductVo vo = new ProductVo("샘플상품", 300000);
		return vo;
	}
	
	
}
