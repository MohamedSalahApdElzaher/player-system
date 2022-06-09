package com.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.PlayerDAO;
import com.spring.model.Player;

@Service
public class PlayerServiceImpl implements PlayerService {

	@Autowired
	private PlayerDAO playerDao;
	
	
	public PlayerServiceImpl() {
	}

	@Override
	@Transactional
	public List<Player> allPlayers() {
		return playerDao.getPlayers();
	}

	@Override
	@Transactional
	public void savePlayer(Player player) {
		playerDao.addPlayers(player);
	}

	@Override
	@Transactional
	public Player showPlayer(int id) {
		return playerDao.getPlayer(id);
	}

	@Override
	@Transactional
	public void deletePlayer(int id) {
		// TODO Auto-generated method stub
		playerDao.removePlayer(id);
		
	}

}
