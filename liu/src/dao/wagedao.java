package dao;

import java.util.List;

import model.Wage;

public interface wagedao {
	public List<Wage> selwage();
	public List<Wage> findbytype(String wagetype);
}
