package com.dramirez.streamingCRUD.interfacesService;

import java.util.List;
import java.util.Optional;

import com.dramirez.streamingCRUD.modelo.Suscriptor;

public interface IsuscriptorService {
    public List<Suscriptor>listar();
    public Optional<Suscriptor>listarId(int id);
    public int save(Suscriptor s);
    public void delete(int id);
}
