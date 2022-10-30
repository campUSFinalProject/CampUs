package kibwa.campus.service;

import java.util.List;

public interface IRevService<T> {
    List<T> getList() throws Exception;

    T findById(String id);

    void save(T DTO);

    void modify(T DTO);

    void delete(T DTO);
}
