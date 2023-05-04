package com.study.article.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.study.article.constant.ArticleRedisKey;
import com.study.article.dao.ArticleItemDao;
import com.study.article.dao.ArticleMainDao;
import com.study.article.entity.ArticleItem;
import com.study.article.entity.ArticleMain;
import com.study.article.service.ArticleItemService;
import com.study.common.core.base.BaseServiceImpl;
import com.study.common.exception.BusinessException;

@Service
public class ArticleItemServiceImpl extends BaseServiceImpl<ArticleItem> implements ArticleItemService{

	@Autowired
	private ArticleItemDao itemDao;
	
	@Autowired
	private ArticleMainDao mainDao;
	
	@Override
	@Transactional
	public int deleteBatch(Long[] ids, String deleteBy, String... key) {
		// 检测分类下面是否有文章
		for(Long itemId : ids) {
			ArticleItem item = new ArticleItem();
			item.setItemId(itemId);
			ArticleMain main = new ArticleMain();
			main.setItem(item);
			if(mainDao.countByItem(main) > 0) {
				item = itemDao.getById(itemId);
				throw new BusinessException(String.format("%1$s分类下有文章,不能删除",item.getItemName()));
			}
		}
		// 删除缓存
		deleteRedis(ArticleRedisKey.ARTCIEL_ITEM_ALL);
		// 批量删除
		return super.deleteBatch(ids, deleteBy);
	}

	@Override
	public List<ArticleItem> listAllRedis() {
		return super.listRedis(new ArticleItem(), ArticleRedisKey.ARTCIEL_ITEM_ALL);
	}
	
	
	
}
