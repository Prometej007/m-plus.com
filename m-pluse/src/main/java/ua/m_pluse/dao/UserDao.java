package ua.m_pluse.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.m_pluse.entity.User;

public interface UserDao extends JpaRepository<User, Integer> {

}
