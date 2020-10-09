package com.kgc.service.impl;

import com.kgc.mapper.AssetsMapper;
import com.kgc.pojo.Assets;
import com.kgc.pojo.AssetsExample;
import com.kgc.service.AssetsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("assetsService")
public class AssetsServiceimpl implements AssetsService {
    @Resource
    AssetsMapper assetsMapper;
    @Override
    public List<Assets> selectAll() {
        return assetsMapper.selectByExample(null);
    }

    @Override
    public List<Assets> selecmohu(String assetid, String assettype) {
        AssetsExample example=new AssetsExample();
        AssetsExample.Criteria criteria = example.createCriteria();
        if(assetid==""&&assettype==""){
            return assetsMapper.selectByExample(null);
        }
        if(assetid!=""){
            criteria.andAssetidLike("%"+assetid+"%");
        }
        if(assettype!=""){
            criteria.andAssettypeLike("%"+assettype+"%");
        }
        return assetsMapper.selectByExample(example);
    }

    @Override
    public void insert(Assets assets) {
        assetsMapper.insertSelective(assets);
    }
}
