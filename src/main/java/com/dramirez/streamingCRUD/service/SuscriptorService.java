package com.dramirez.streamingCRUD.service;

import com.dramirez.streamingCRUD.interfaces.ISuscriptor;
import com.dramirez.streamingCRUD.interfacesService.IsuscriptorService;
import com.dramirez.streamingCRUD.modelo.Suscriptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SuscriptorService implements IsuscriptorService {

    @Autowired
    private ISuscriptor data;

    @Override
    public List<Suscriptor> listar() {

        return (List<Suscriptor>)data.findAll();
    }

    @Override
    public Optional<Suscriptor> listarId(int id) {
        return data.findById(id);
    }

    @Override
    public int save(Suscriptor s) {
        int res=0;
        Suscriptor suscriptor = data.save(s);
        if(!suscriptor.equals(null)){
            res=1;
        }
        return res;
    }

    @Override
    public void delete(int id) {
        data.deleteById(id);
    }
}
