package ua.m_pluse.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ua.m_pluse.entity.FileAdmin;


@Repository
public interface FileAdminDao extends JpaRepository<FileAdmin, Integer>{

}
