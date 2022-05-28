package com.dramirez.streamingCRUD.interfaces;

import com.dramirez.streamingCRUD.modelo.Suscriptor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ISuscriptor extends CrudRepository<Suscriptor, Integer> {

}
