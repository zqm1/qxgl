package com.web.ssm.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.web.ssm.dao.mapper.MusicInfoMapper;
import com.web.ssm.domain.MusicInfo;
import com.web.ssm.service.MusicInfoService;

@Service("musicService")
public class MusicInfoServiceImpl implements MusicInfoService{
	 @Resource
    private MusicInfoMapper musicInfoMapper;

    public List<MusicInfo> getMusicInfo(MusicInfo musicInfo) {
    	System.out.println("test==========");
        List<MusicInfo> musicInfos = musicInfoMapper.selectAll(musicInfo);
        System.out.println("musicInfos=============================");
        return musicInfos;
    }
}
